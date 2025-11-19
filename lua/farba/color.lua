local M = {}

M.cache = {
  dark = {},
  light = {},
}

---@param coords Farba.Profile.Palette.Base16.Coords
---@param mode Farba.Profile.Mode
---@return table colors
function M.palettize(coords, mode)
  local hue, sat = coords.hue, coords.sat
  local hash = hue .. ":" .. sat

  ---@diagnostic disable-next-line: unnecessary-if
  if M.cache[mode][hash] then
    return M.cache[mode][hash]
  end

  local colors = {}
  local is_dark = mode == "dark"

  for val = 5, 95, 5 do
    colors[("v%02d"):format(val)] =
      M.hxl(hue, sat, is_dark and val or (100 - val))
  end
  colors.v01 = M.hxl(hue, sat, is_dark and 1 or 99)
  colors.v13 = M.hxl(hue, sat, is_dark and 13 or 87)
  colors.v99 = M.hxl(hue, sat, is_dark and 99 or 1)

  M.cache[mode][hash] = colors
  return colors
end

function M.hxl(hue, sat, val)
  if val == 0 then
    return "#000000"
  elseif val == 100 then
    return "#ffffff"
  end

  local A = -0.14861
  local B = 1.78277
  local C = -0.29227
  local D = -0.90649
  local E = 1.97294

  sat = sat / 100
  val = val / 100

  if sat == 0 then
    hue = 0
  else
    hue = (math.pi * (hue + 120)) / 180
  end

  local koef = sat * val * (1 - val)
  local cosh = math.cos(hue)
  local sinh = math.sin(hue)

  local r = val + koef * (A * cosh + B * sinh)
  local g = val + koef * (C * cosh + D * sinh)
  local b = val + koef * (E * cosh)

  r = math.min(1, math.max(0, r)) * 255
  g = math.min(1, math.max(0, g)) * 255
  b = math.min(1, math.max(0, b)) * 255

  return string.format("#%02x%02x%02x", r, g, b)
end

return M
