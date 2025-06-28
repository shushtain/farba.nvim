local M = {}

M.defaults = {
	light_mode = false,
	background = true,
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

---@class Config
---@field light_mode boolean If `true`, generate a light theme.
---@field background boolean If `false`, make editor background transparent.
---@field colors table Color values for the theme.
---@field colors.general table General color values.
---@field colors.general.gray table `{hue 0-360, saturation 0-100+}`
---@field colors.general.gray.1 integer Hue 0-360
---@field colors.general.gray.2 integer Saturation 0-100+
---@field colors.general.red table `{hue 0-360, saturation 0-100+}`
---@field colors.general.red.1 integer Hue 0-360
---@field colors.general.red.2 integer Saturation 0-100+
---@field colors.general.green table `{hue 0-360, saturation 0-100+}`
---@field colors.general.green.1 integer Hue 0-360
---@field colors.general.green.2 integer Saturation 0-100+
---@field colors.general.yellow table `{hue 0-360, saturation 0-100+}`
---@field colors.general.yellow.1 integer Hue 0-360
---@field colors.general.yellow.2 integer Saturation 0-100+
---@field colors.general.blue table `{hue 0-360, saturation 0-100+}`
---@field colors.general.blue.1 integer Hue 0-360
---@field colors.general.blue.2 integer Saturation 0-100+
---@field colors.general.magenta table `{hue 0-360, saturation 0-100+}`
---@field colors.general.magenta.1 integer Hue 0-360
---@field colors.general.magenta.2 integer Saturation 0-100+
---@field colors.general.cyan table `{hue 0-360, saturation 0-100+}`
---@field colors.general.cyan.1 integer Hue 0-360
---@field colors.general.cyan.2 integer Saturation 0-100+
---@field colors.status table Status color values (diagnostic, git diff, etc).
---@field colors.status.red table `Error signals {hue 0-360, saturation 0-100+}`
---@field colors.status.red.1 integer Hue 0-360
---@field colors.status.red.2 integer Saturation 0-100+
---@field colors.status.yellow table `Warning signals {hue 0-360, saturation 0-100+}`
---@field colors.status.yellow.1 integer Hue 0-360
---@field colors.status.yellow.2 integer Saturation 0-100+
---@field colors.status.green table `Success signals {hue 0-360, saturation 0-100+}`
---@field colors.status.green.1 integer Hue 0-360
---@field colors.status.green.2 integer Saturation 0-100+
---@field colors.terminal table Terminal color values.
---@field colors.terminal.gray table `{hue 0-360, saturation 0-100+}`
---@field colors.terminal.gray.1 integer Hue 0-360
---@field colors.terminal.gray.2 integer Saturation 0-100+
---@field colors.terminal.red table `{hue 0-360, saturation 0-100+}`
---@field colors.terminal.red.1 integer Hue 0-360
---@field colors.terminal.red.2 integer Saturation 0-100+
---@field colors.terminal.green table `{hue 0-360, saturation 0-100+}`
---@field colors.terminal.green.1 integer Hue 0-360
---@field colors.terminal.green.2 integer Saturation 0-100+
---@field colors.terminal.yellow table `{hue 0-360, saturation 0-100+}`
---@field colors.terminal.yellow.1 integer Hue 0-360
---@field colors.terminal.yellow.2 integer Saturation 0-100+
---@field colors.terminal.blue table `{hue 0-360, saturation 0-100+}`
---@field colors.terminal.blue.1 integer Hue 0-360
---@field colors.terminal.blue.2 integer Saturation 0-100+
---@field colors.terminal.magenta table `{hue 0-360, saturation 0-100+}`
---@field colors.terminal.magenta.1 integer Hue 0-360
---@field colors.terminal.magenta.2 integer Saturation 0-100+
---@field colors.terminal.cyan table `{hue 0-360, saturation 0-100+}`
---@field colors.terminal.cyan.1 integer Hue 0-360
---@field colors.terminal.cyan.2 integer Saturation 0-100+
---@field colors.syntax table Syntax color values.
---@field colors.syntax.gray table `{hue 0-360, saturation 0-100+}`
---@field colors.syntax.gray.1 integer Hue 0-360
---@field colors.syntax.gray.2 integer Saturation 0-100+
---@field colors.syntax.red table `{hue 0-360, saturation 0-100+}`
---@field colors.syntax.red.1 integer Hue 0-360
---@field colors.syntax.red.2 integer Saturation 0-100+
---@field colors.syntax.green table `{hue 0-360, saturation 0-100+}`
---@field colors.syntax.green.1 integer Hue 0-360
---@field colors.syntax.green.2 integer Saturation 0-100+
---@field colors.syntax.yellow table `{hue 0-360, saturation 0-100+}`
---@field colors.syntax.yellow.1 integer Hue 0-360
---@field colors.syntax.yellow.2 integer Saturation 0-100+
---@field colors.syntax.blue table `{hue 0-360, saturation 0-100+}`
---@field colors.syntax.blue.1 integer Hue 0-360
---@field colors.syntax.blue.2 integer Saturation 0-100+
---@field colors.syntax.magenta table `{hue 0-360, saturation 0-100+}`
---@field colors.syntax.magenta.1 integer Hue 0-360
---@field colors.syntax.magenta.2 integer Saturation 0-100+
---@field colors.syntax.cyan table `{hue 0-360, saturation 0-100+}`
---@field colors.syntax.cyan.1 integer Hue 0-360
---@field colors.syntax.cyan.2 integer Saturation 0-100+
M.options = {}

function M.__setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

return M
