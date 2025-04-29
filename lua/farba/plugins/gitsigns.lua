local M = {}

function M.setup(palette)
	local groups = {
		GitSignsAdd = { fg = palette.status.green.v30 },
		GitSignsChange = { fg = palette.status.yellow.v30 },
		GitSignsDelete = { fg = palette.status.red.v30 },
		GitSignsCurrentLineBlame = { fg = palette.general.gray.v40 },
		GitSignsAddInline = { bg = palette.status.green.v20 },
		GitSignsChangeInline = { bg = palette.status.yellow.v20 },
		GitSignsDeleteInline = { bg = palette.status.red.v20 },
	}

	for key, value in pairs(groups) do
		vim.api.nvim_set_hl(0, key, value)
	end
end

return M
