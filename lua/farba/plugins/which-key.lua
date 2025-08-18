local M = {}

function M.setup()
  local colors = vim.g.farba.colors

  local background = vim.g.farba.background and colors.general.gray.v10
    or "NONE"

  local groups = {
    WhichKeyNormal = { fg = colors.general.gray.v80, bg = background },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
