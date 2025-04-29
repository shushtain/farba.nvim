local M = {}

M.defaults = {
	light_mode = false,
	colors = {
		general = {
			gray = { 0, 0 },
			red = { 0, 100 },
			green = { 120, 50 },
			yellow = { 40, 75 },
			blue = { 200, 50 },
			magenta = { 280, 50 },
			cyan = { 150, 50 },
		},
		status = {
			red = false,
			yellow = false,
			green = false,
		},
		terminal = {
			gray = false,
			red = false,
			green = false,
			yellow = false,
			blue = false,
			magenta = false,
			cyan = false,
		},
		syntax = {
			gray = false,
			red = false,
			green = false,
			yellow = false,
			blue = false,
			magenta = false,
			cyan = false,
		},
	},
}

M.options = {}

function M.__setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

return M
