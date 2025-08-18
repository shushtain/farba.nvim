local M = {}

function M.setup()
  local colors = vim.g.farba.colors

  local groups = {
    GitSignsAdd = { fg = colors.status.green.v30 },
    GitSignsChange = { fg = colors.status.yellow.v30 },
    GitSignsDelete = { fg = colors.status.red.v30 },
    GitSignsCurrentLineBlame = { fg = colors.general.gray.v40 },
    GitSignsAddInline = { bg = colors.status.green.v20 },
    GitSignsChangeInline = { bg = colors.status.yellow.v20 },
    GitSignsDeleteInline = { bg = colors.status.red.v20 },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
