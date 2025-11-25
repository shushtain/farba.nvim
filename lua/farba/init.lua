local M = {}

---Clear cached themes
function M.purge()
  require("farba.cache").clear()
end

---Apply theme
function M.colorscheme()
  local theme = require("farba.theme").generate()
  if not theme then
    vim.notify(
      "Failed to generate theme from setup. Check config",
      vim.log.levels.WARN
    )
    return nil
  end

  vim.g.farba = theme
  vim.o.termguicolors = true

  require("farba.core").setup()
  require("farba.plugins").setup()

  vim.g.colors_name = "farba"
  vim.o.background = vim.g.farba.mode
end

---Set theme configuration
---@param opts? Farba.Config
function M.setup(opts)
  require("farba.config").setup(opts)
end

return M
