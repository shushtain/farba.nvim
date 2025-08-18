local colors = vim.g.farba.colors
local theme = {}

theme.normal = {
  a = {
    fg = colors.general.gray.v20,
    bg = colors.general.gray.v60,
    gui = "bold",
  },
  b = {
    fg = colors.general.gray.v70,
    bg = colors.general.gray.v30,
  },
  c = {
    fg = colors.general.gray.v70,
    bg = colors.general.gray.v20,
  },
}

theme.insert = {
  a = {
    fg = colors.general.green.v20,
    bg = colors.general.green.v60,
    gui = "bold",
  },
  b = {
    fg = colors.general.green.v70,
    bg = colors.general.green.v30,
  },
  c = {
    fg = colors.general.green.v70,
    bg = colors.general.green.v20,
  },
}

theme.visual = {
  a = {
    fg = colors.general.blue.v20,
    bg = colors.general.blue.v60,
    gui = "bold",
  },
  b = {
    fg = colors.general.blue.v70,
    bg = colors.general.blue.v30,
  },
  c = {
    fg = colors.general.blue.v70,
    bg = colors.general.blue.v20,
  },
}

theme.replace = {
  a = {
    fg = colors.general.yellow.v20,
    bg = colors.general.yellow.v60,
    gui = "bold",
  },
  b = {
    fg = colors.general.yellow.v70,
    bg = colors.general.yellow.v30,
  },
  c = {
    fg = colors.general.yellow.v70,
    bg = colors.general.yellow.v20,
  },
}

theme.command = {
  a = {
    fg = colors.general.magenta.v20,
    bg = colors.general.magenta.v60,
    gui = "bold",
  },
  b = {
    fg = colors.general.magenta.v70,
    bg = colors.general.magenta.v30,
  },
  c = {
    fg = colors.general.magenta.v70,
    bg = colors.general.magenta.v20,
  },
}

theme.terminal = {
  a = {
    fg = colors.general.cyan.v20,
    bg = colors.general.cyan.v60,
    gui = "bold",
  },
  b = {
    fg = colors.general.cyan.v70,
    bg = colors.general.cyan.v30,
  },
  c = {
    fg = colors.general.cyan.v70,
    bg = colors.general.cyan.v20,
  },
}

theme.inactive = {
  a = {
    fg = colors.general.gray.v60,
    bg = colors.general.gray.v20,
    gui = "bold",
  },
  b = {
    fg = colors.general.gray.v60,
    bg = colors.general.gray.v20,
  },
  c = {
    fg = colors.general.gray.v60,
    bg = colors.general.gray.v20,
  },
}

return theme
