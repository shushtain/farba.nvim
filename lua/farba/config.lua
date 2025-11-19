local M = {}

---@type Farba.Config
M.config = {}

---@param opts? Farba.Config
function M.setup(opts)
  ---@diagnostic disable-next-line: generic-constraint-mismatch
  M.config = vim.deepcopy(opts)
end

return M
