local config = require("farba.config")
local utils = require("farba.utils")
local M = {}

function M.setup()
	local colors = config.options.colors
	local light_mode = config.options.light_mode
	local palette = {}

	palette.general = {}
	for key, value in pairs(colors.general) do
		if type(value) == "table" and #value >= 2 then
			palette.general[key] = utils.swatches(value[1], value[2], light_mode)
		else
			palette.general[key] = utils.swatches(0, 0, light_mode)
		end
	end

	palette.status = {}
	for key, value in pairs(colors.status) do
		if type(value) == "table" and #value >= 2 then
			palette.status[key] = utils.swatches(value[1], value[2], light_mode)
		else
			palette.status[key] = palette.general[key]
		end
	end

	palette.terminal = {}
	for key, value in pairs(colors.terminal) do
		if type(value) == "table" and #value >= 2 then
			palette.terminal[key] = utils.swatches(value[1], value[2], light_mode)
		else
			palette.terminal[key] = palette.general[key]
		end
	end

	palette.syntax = {}
	for key, value in pairs(colors.syntax) do
		if type(value) == "table" and #value >= 2 then
			palette.syntax[key] = utils.swatches(value[1], value[2], light_mode)
		else
			palette.syntax[key] = palette.general[key]
		end
	end

	return palette
end

return M
