local M = {}

function M.setup()
  ---@type Farba.Theme
  local farba = vim.g.farba
  local status = farba.palette.status

  ---@type table<string, vim.api.keyset.highlight>
  local groups = {
    GitSignsAdd = { fg = status.green.v30 },
    GitSignsChange = { fg = status.yellow.v30 },
    GitSignsDelete = { fg = status.red.v30 },
    GitSignsCurrentLineBlame = { fg = status.gray.v40 },
    GitSignsAddInline = { bg = status.green.v20 },
    GitSignsChangeInline = { bg = status.yellow.v20 },
    GitSignsDeleteInline = { bg = status.red.v20 },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
