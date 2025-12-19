local M = {}

function M.setup()
  require("farba.plugins.gitsigns").setup()
  require("farba.plugins.glyph-palette").setup()
end

return M
