local M = {}

---@type Farba.Config
M.model = {
  mode = vim.NIL,
  transparency = { normal = false, float = false },
  palette = {
    general = {
      gray = { hue = 0, sat = 0 },
      red = { hue = 0, sat = 100 },
      yellow = { hue = 30, sat = 75 },
      green = { hue = 80, sat = 50 },
      cyan = { hue = 120, sat = 75 },
      blue = { hue = 200, sat = 25 },
      magenta = { hue = 260, sat = 35 },
    },
    status = {
      gray = vim.NIL,
      red = vim.NIL,
      yellow = vim.NIL,
      green = vim.NIL,
      cyan = vim.NIL,
      blue = vim.NIL,
      magenta = vim.NIL,
    },
    terminal = {
      gray = vim.NIL,
      red = vim.NIL,
      yellow = vim.NIL,
      green = vim.NIL,
      cyan = vim.NIL,
      blue = vim.NIL,
      magenta = vim.NIL,
    },
    syntax = {
      gray = vim.NIL,
      red = vim.NIL,
      yellow = vim.NIL,
      green = vim.NIL,
      cyan = vim.NIL,
      blue = vim.NIL,
      magenta = vim.NIL,
    },
  },
}

---@param config Farba.Config
---@return Farba.Profile profile
function M.normalize(config)
  local profile = vim.deepcopy(M.model, true)
  profile = vim.tbl_deep_extend("force", profile, config)

  -- define mode if not enforced
  if profile.mode == vim.NIL then
    profile.mode = vim.o.background
  end

  -- apply fallback to general
  ---@diagnostic disable-next-line: param-type-mismatch
  for group, subgroups in pairs(profile.palette) do
    if group ~= "general" then
      for subgroup, coords in pairs(subgroups) do
        if coords == vim.NIL then
          ---@diagnostic disable-next-line: need-check-nil
          profile.palette[group][subgroup] = profile.palette.general[subgroup]
        end
      end
    end
  end

  ---@diagnostic disable-next-line: return-type-mismatch
  return profile
end

return M
