local M = {}

function M.setup(palette)
	local groups = {
		TelescopeBorder = { link = "FloatBorder" },
		TelescopeTitle = { link = "FloatTitle" },
		TelescopeSelection = { link = "CursorLine" },
		-- TelescopePromptCounter = { fg = palette.general.gray.v40 },
	}

	for key, value in pairs(groups) do
		vim.api.nvim_set_hl(0, key, value)
	end
end

return M
