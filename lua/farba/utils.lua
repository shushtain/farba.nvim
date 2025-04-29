local M = {}

M.swatches = function(h, x, light_mode)
	local list = {}
	h = h or 0
	x = x or 100

	if light_mode then
		list["v01"] = M.hxl(h, x, 99)
		for l = 5, 95, 5 do
			list[string.format("v%02d", l)] = M.hxl(h, x, 100 - l)
		end
		list["v99"] = M.hxl(h, x, 1)
	else
		list["v01"] = M.hxl(h, x, 1)
		for l = 5, 95, 5 do
			list[string.format("v%02d", l)] = M.hxl(h, x, l)
		end
		list["v99"] = M.hxl(h, x, 99)
	end

	return list
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

	h = (math.pi * (h + 120)) / 180

	if x <= 0 then
		h = 0
	end

	local k = x * l * (1 - l)
	local cosh = math.cos(h)
	local sinh = math.sin(h)

	local r = l + k * (A * cosh + B * sinh)
	local g = l + k * (C * cosh + D * sinh)
	local b = l + k * (E * cosh)

	r = math.min(1, math.max(0, r)) * 255
	g = math.min(1, math.max(0, g)) * 255
	b = math.min(1, math.max(0, b)) * 255

	return "#" .. string.format("%02x%02x%02x", r, g, b)
end

return M
