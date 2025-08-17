local M = {}

function M.setup()
  local colors = require("farba.config").options.colors
  local background = require("farba.config").options.background
  local light_mode = require("farba.config").options.light_mode
  local palette = {}

  palette.general = {}
  for key, value in pairs(colors.general) do
    if type(value) == "table" and #value >= 2 then
      palette.general[key] =
        require("farba.utils").swatches(value[1], value[2], light_mode)
    else
      palette.general[key] = require("farba.utils").swatches(0, 0, light_mode)
    end
  end

  palette.status = {}
  for key, value in pairs(colors.status) do
    if type(value) == "table" and #value >= 2 then
      palette.status[key] =
        require("farba.utils").swatches(value[1], value[2], light_mode)
    else
      palette.status[key] = palette.general[key]
    end
  end

  palette.terminal = {}
  for key, value in pairs(colors.terminal) do
    if type(value) == "table" and #value >= 2 then
      palette.terminal[key] =
        require("farba.utils").swatches(value[1], value[2], light_mode)
    else
      palette.terminal[key] = palette.general[key]
    end
  end

  palette.syntax = {}
  for key, value in pairs(colors.syntax) do
    if type(value) == "table" and #value >= 2 then
      palette.syntax[key] =
        require("farba.utils").swatches(value[1], value[2], light_mode)
    else
      palette.syntax[key] = palette.general[key]
    end
  end

  palette.background = true
  if type(background) == "boolean" then
    palette.background = background
  end

  return palette
end

return M
