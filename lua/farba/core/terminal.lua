local M = {}

function M.setup()
  ---@type Farba.Theme
  local farba = vim.g.farba
  local terminal = farba.palette.terminal
  --
  vim.g.terminal_color_0 = terminal.gray.v10
  vim.g.terminal_color_1 = terminal.red.v60
  vim.g.terminal_color_2 = terminal.green.v60
  vim.g.terminal_color_3 = terminal.yellow.v60
  vim.g.terminal_color_4 = terminal.blue.v60
  vim.g.terminal_color_5 = terminal.magenta.v60
  vim.g.terminal_color_6 = terminal.cyan.v60
  vim.g.terminal_color_7 = terminal.gray.v70
  --
  vim.g.terminal_color_8 = terminal.gray.v40
  vim.g.terminal_color_9 = terminal.red.v70
  vim.g.terminal_color_10 = terminal.green.v70
  vim.g.terminal_color_11 = terminal.yellow.v70
  vim.g.terminal_color_12 = terminal.blue.v70
  vim.g.terminal_color_13 = terminal.magenta.v70
  vim.g.terminal_color_14 = terminal.cyan.v70
  vim.g.terminal_color_15 = terminal.gray.v80
end

return M
