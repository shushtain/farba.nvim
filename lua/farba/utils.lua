local M = {}

M.palettize = function(h, x)
  local opts = require("farba.config").config
  local palette = {}

  h = h or 0
  x = x or 0

  palette.v01 = opts.light_mode and M.hxl(h, x, 99) or M.hxl(h, x, 1)
  for l = 5, 95, 5 do
    palette[("v%02d"):format(l)] =
      M.hxl(h, x, opts.light_mode and (100 - l) or l)
  end
  palette.v99 = opts.light_mode and M.hxl(h, x, 1) or M.hxl(h, x, 99)
  palette.v13 = opts.light_mode and M.hxl(h, x, 87) or M.hxl(h, x, 13)

  return palette
end

M.hxl = function(h, x, l)
  local A = -0.14861
  local B = 1.78277
  local C = -0.29227
  local D = -0.90649
  local E = 1.97294

  x = x / 100
  l = l / 100

  if l <= 0 then
    return "#000000"
  end
  if l >= 1 then
    return "#FFFFFF"
  end

  h = x <= 0 and 0 or ((math.pi * (h + 120)) / 180)

  local k = x * l * (1 - l)
  local cosh = math.cos(h)
  local sinh = math.sin(h)

  local r = l + k * (A * cosh + B * sinh)
  local g = l + k * (C * cosh + D * sinh)
  local b = l + k * (E * cosh)

  r = math.min(1, math.max(0, r)) * 255
  g = math.min(1, math.max(0, g)) * 255
  b = math.min(1, math.max(0, b)) * 255

  return string.format("#%02x%02x%02x", r, g, b)
end

return M
