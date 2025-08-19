local M = {}

function M.setup()
  local opts = require("farba.config").config
  local palettize = require("farba.utils").palettize
  local colors = {}

  colors.general = {}
  for key, value in pairs(opts.colors.general) do
    if type(value) == "table" and #value >= 2 then
      colors.general[key] = palettize(value[1], value[2])
    else
      colors.general[key] = palettize()
    end
  end

  colors.status = {}
  for key, value in pairs(opts.colors.status) do
    if type(value) == "table" and #value >= 2 then
      colors.status[key] = palettize(value[1], value[2])
    else
      colors.status[key] = colors.general[key]
    end
  end

  colors.terminal = {}
  for key, value in pairs(opts.colors.terminal) do
    if type(value) == "table" and #value >= 2 then
      colors.terminal[key] = palettize(value[1], value[2])
    else
      colors.terminal[key] = colors.general[key]
    end
  end

  colors.syntax = {}
  for key, value in pairs(opts.colors.syntax) do
    if type(value) == "table" and #value >= 2 then
      colors.syntax[key] = palettize(value[1], value[2])
    else
      colors.syntax[key] = colors.general[key]
    end
  end

  vim.g.farba = {
    light_mode = opts.light_mode,
    background = opts.background,
    fill_floats = opts.fill_floats,
    colors = colors,
  }
end

return M
