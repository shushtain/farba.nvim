local M = {}

function M.setup(palette)
	-- default
	vim.g.terminal_color_0 = palette.terminal.gray.v10
	vim.g.terminal_color_1 = palette.terminal.red.v55
	vim.g.terminal_color_2 = palette.terminal.green.v60
	vim.g.terminal_color_3 = palette.terminal.yellow.v75
	vim.g.terminal_color_4 = palette.terminal.blue.v65
	vim.g.terminal_color_5 = palette.terminal.magenta.v50
	vim.g.terminal_color_6 = palette.terminal.cyan.v70
	vim.g.terminal_color_7 = palette.terminal.gray.v80
	-- bright
	vim.g.terminal_color_8 = palette.terminal.gray.v40
	vim.g.terminal_color_9 = palette.terminal.red.v65
	vim.g.terminal_color_10 = palette.terminal.green.v70
	vim.g.terminal_color_11 = palette.terminal.yellow.v85
	vim.g.terminal_color_12 = palette.terminal.blue.v75
	vim.g.terminal_color_13 = palette.terminal.magenta.v60
	vim.g.terminal_color_14 = palette.terminal.cyan.v80
	vim.g.terminal_color_15 = palette.terminal.gray.v90
end

return M
