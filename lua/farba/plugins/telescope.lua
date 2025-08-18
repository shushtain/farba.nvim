local M = {}

function M.setup()
  local groups = {
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeTitle = { link = "FloatTitle" },
    TelescopeSelection = { link = "CursorLine" },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
