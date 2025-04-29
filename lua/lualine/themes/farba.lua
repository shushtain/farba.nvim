local palette = require("farba.palette").setup()
local theme = {}

theme.normal = {
	a = {
		fg = palette.general.gray.v10,
		bg = palette.general.gray.v60,
		gui = "bold",
	},
	b = {
		fg = palette.general.gray.v80,
		bg = palette.general.gray.v30,
	},
	c = {
		fg = palette.general.gray.v80,
		bg = palette.general.gray.v20,
	},
}

theme.insert = {
	a = {
		fg = palette.general.green.v10,
		bg = palette.general.green.v60,
		gui = "bold",
	},
	b = {
		fg = palette.general.green.v80,
		bg = palette.general.green.v30,
	},
	c = {
		fg = palette.general.green.v80,
		bg = palette.general.green.v20,
	},
}

theme.visual = {
	a = {
		fg = palette.general.blue.v10,
		bg = palette.general.blue.v60,
		gui = "bold",
	},
	b = {
		fg = palette.general.blue.v80,
		bg = palette.general.blue.v30,
	},
	c = {
		fg = palette.general.blue.v80,
		bg = palette.general.blue.v20,
	},
}

theme.replace = {
	a = {
		fg = palette.general.yellow.v10,
		bg = palette.general.yellow.v60,
		gui = "bold",
	},
	b = {
		fg = palette.general.yellow.v80,
		bg = palette.general.yellow.v30,
	},
	c = {
		fg = palette.general.yellow.v80,
		bg = palette.general.yellow.v20,
	},
}

theme.command = {
	a = {
		fg = palette.general.magenta.v10,
		bg = palette.general.magenta.v60,
		gui = "bold",
	},
	b = {
		fg = palette.general.magenta.v80,
		bg = palette.general.magenta.v30,
	},
	c = {
		fg = palette.general.magenta.v80,
		bg = palette.general.magenta.v20,
	},
}

theme.terminal = {
	a = {
		fg = palette.general.cyan.v10,
		bg = palette.general.cyan.v60,
		gui = "bold",
	},
	b = {
		fg = palette.general.cyan.v80,
		bg = palette.general.cyan.v30,
	},
	c = {
		fg = palette.general.cyan.v80,
		bg = palette.general.cyan.v20,
	},
}

theme.inactive = {
	a = {
		fg = palette.general.gray.v60,
		bg = palette.general.gray.v20,
		gui = "bold",
	},
	b = {
		fg = palette.general.gray.v60,
		bg = palette.general.gray.v20,
	},
	c = {
		fg = palette.general.gray.v60,
		bg = palette.general.gray.v20,
	},
}

return theme
