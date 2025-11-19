local M = {}

---@return Farba.Theme? theme
function M.generate()
  local config = require("farba.config").config
  local profile = require("farba.profile").normalize(config)

  ---@diagnostic disable-next-line: assign-type-mismatch
  ---@type Farba.Theme
  local theme = vim.deepcopy(profile)
  local hash = require("farba.cache").hash(profile)

  local cache = require("farba.cache").decode(hash)
  if cache then
    theme.palette = cache
    return theme
  end

  for group, subgroups in pairs(profile.palette) do
    for subgroup, _ in pairs(subgroups) do
      local coords = profile.palette[group][subgroup]
      local colors = require("farba.color").palettize(coords, profile.mode)
      theme.palette[group][subgroup] = colors
    end
  end

  require("farba.cache").encode(hash, theme.palette)
  return theme
end

return M
