local config = require("farba.config")
local palette = require("farba.palette")
local utils = require("farba.utils")

local M = {}

local core = {
	require("farba.core.terminal"),
	require("farba.core.editor"),
	require("farba.core.syntax"),
}

local plugins = {
	require("farba.plugins.telescope"),
	require("farba.plugins.gitsigns"),
	require("farba.plugins.which-key"),
}

function M.colorscheme()
	vim.opt.termguicolors = true
	vim.cmd("hi clear")
	vim.cmd("syntax reset")
	vim.g.colors_name = "farba"

	local pal = palette.setup()
	for _, item in ipairs(core) do
		item.setup(pal)
	end
	for _, item in ipairs(plugins) do
		item.setup(pal)
	end
end

function M.setup(options)
	config.__setup(options)
end

return M
