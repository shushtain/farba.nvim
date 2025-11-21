local M = {}

M.cache = vim.fn.stdpath("cache") .. "/farba.nvim/"

function M.clear()
  if vim.fn.delete(M.cache, "rf") == 0 then
    vim.notify("Farba: Cache purged", vim.log.levels.INFO)
    return
  end
  if vim.fn.isdirectory(M.cache) == 0 then
    vim.notify("Farba: Cache is empty", vim.log.levels.INFO)
    return
  end
  vim.notify("Farba: Couldn't purge " .. M.cache, vim.log.levels.WARN)
end

---@param hash string
---@param palette Farba.Theme.Palette
function M.encode(hash, palette)
  if vim.fn.isdirectory(M.cache) == 0 then
    vim.fn.mkdir(M.cache, "p")
  end
  local path = M.cache .. hash .. ".json"
  local data = vim.fn.json_encode(palette)
  vim.fn.writefile({ data }, path)
end

---@param hash string
---@return Farba.Theme.Palette? palette
function M.decode(hash)
  local path = M.cache .. hash .. ".json"
  if vim.fn.filereadable(path) == 1 then
    local file = vim.fn.readfile(path)
    return vim.fn.json_decode(file)
  end
end

---@param profile Farba.Profile
---@return string hash
function M.hash(profile)
  local hash = { profile.mode }

  local groups = vim.tbl_get(profile, "palette")
  local group_keys = vim.tbl_keys(groups)
  table.sort(group_keys)

  for _, group in ipairs(group_keys) do
    local subgroups = groups[group]
    local subgroup_keys = vim.tbl_keys(subgroups)
    table.sort(subgroup_keys)

    for _, subgroup in ipairs(subgroup_keys) do
      local coords = subgroups[subgroup]
      local sat = coords.sat
      local hue = sat == 0 and 0 or coords.hue
      table.insert(hash, hue)
      table.insert(hash, sat)
    end
  end

  local id = table.concat(hash, "_")
  return vim.fn.sha256(id)
end

return M
