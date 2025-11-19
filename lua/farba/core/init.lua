local M = {}

function M.setup()
  require("farba.core.editor").setup()
  require("farba.core.terminal").setup()
  require("farba.core.diagnostic").setup()
  require("farba.core.syntax").setup()
  require("farba.core.special").setup()
end

return M
