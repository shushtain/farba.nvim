local M = {}

function M.setup()
  local colors = vim.g.farba.colors

  -- default
  vim.g.terminal_color_0 = colors.terminal.gray.v10
  vim.g.terminal_color_1 = colors.terminal.red.v60
  vim.g.terminal_color_2 = colors.terminal.green.v60
  vim.g.terminal_color_3 = colors.terminal.yellow.v60
  vim.g.terminal_color_4 = colors.terminal.blue.v60
  vim.g.terminal_color_5 = colors.terminal.magenta.v60
  vim.g.terminal_color_6 = colors.terminal.cyan.v60
  vim.g.terminal_color_7 = colors.terminal.gray.v70

  -- bright
  vim.g.terminal_color_8 = colors.terminal.gray.v40
  vim.g.terminal_color_9 = colors.terminal.red.v70
  vim.g.terminal_color_10 = colors.terminal.green.v70
  vim.g.terminal_color_11 = colors.terminal.yellow.v70
  vim.g.terminal_color_12 = colors.terminal.blue.v70
  vim.g.terminal_color_13 = colors.terminal.magenta.v70
  vim.g.terminal_color_14 = colors.terminal.cyan.v70
  vim.g.terminal_color_15 = colors.terminal.gray.v80
end

return M
