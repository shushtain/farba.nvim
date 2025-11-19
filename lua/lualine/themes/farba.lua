local palette = vim.g.farba.palette
local M = {}

M.normal = {
  a = {
    fg = palette.general.gray.v20,
    bg = palette.general.gray.v60,
    gui = "bold",
  },
  b = {
    fg = palette.general.gray.v70,
    bg = palette.general.gray.v30,
  },
  c = {
    fg = palette.general.gray.v70,
    bg = palette.general.gray.v20,
  },
}

M.insert = {
  a = {
    fg = palette.general.green.v20,
    bg = palette.general.green.v60,
    gui = "bold",
  },
  b = {
    fg = palette.general.green.v70,
    bg = palette.general.green.v30,
  },
  c = {
    fg = palette.general.green.v70,
    bg = palette.general.green.v20,
  },
}

M.visual = {
  a = {
    fg = palette.general.blue.v20,
    bg = palette.general.blue.v60,
    gui = "bold",
  },
  b = {
    fg = palette.general.blue.v70,
    bg = palette.general.blue.v30,
  },
  c = {
    fg = palette.general.blue.v70,
    bg = palette.general.blue.v20,
  },
}

M.replace = {
  a = {
    fg = palette.general.yellow.v20,
    bg = palette.general.yellow.v60,
    gui = "bold",
  },
  b = {
    fg = palette.general.yellow.v70,
    bg = palette.general.yellow.v30,
  },
  c = {
    fg = palette.general.yellow.v70,
    bg = palette.general.yellow.v20,
  },
}

M.command = {
  a = {
    fg = palette.general.magenta.v20,
    bg = palette.general.magenta.v60,
    gui = "bold",
  },
  b = {
    fg = palette.general.magenta.v70,
    bg = palette.general.magenta.v30,
  },
  c = {
    fg = palette.general.magenta.v70,
    bg = palette.general.magenta.v20,
  },
}

M.terminal = {
  a = {
    fg = palette.general.cyan.v20,
    bg = palette.general.cyan.v60,
    gui = "bold",
  },
  b = {
    fg = palette.general.cyan.v70,
    bg = palette.general.cyan.v30,
  },
  c = {
    fg = palette.general.cyan.v70,
    bg = palette.general.cyan.v20,
  },
}

M.inactive = {
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

return M
