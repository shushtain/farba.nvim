local M = {}

function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = "farba"

  require("farba.palette").setup()

  local core = {
    require("farba.core.editor"),
    require("farba.core.syntax"),
    require("farba.core.terminal"),
  }
  for _, item in ipairs(core) do
    item.setup()
  end

  local plugins = {
    require("farba.plugins.gitsigns"),
  }
  for _, item in ipairs(plugins) do
    item.setup()
  end
end

---Override default configuration.
---@param opts? Farba.Config
function M.setup(opts)
  require("farba.config").setup(opts)
end

return M
