local M = {}

function M.setup(palette)
	local background = palette.background and palette.general.gray.v10 or "NONE"
	local groups = {
		WhichKeyNormal = { fg = palette.general.gray.v80, bg = background },
	}

	for key, value in pairs(groups) do
		vim.api.nvim_set_hl(0, key, value)
	end
end

return M
