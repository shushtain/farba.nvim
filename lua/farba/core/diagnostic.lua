local M = {}

function M.setup()
  ---@type Farba.Theme
  local farba = vim.g.farba
  local status = farba.palette.status

  ---@type table<string, vim.api.keyset.highlight>
  local groups = {
    DiagnosticError = { fg = status.red.v70 },
    DiagnosticWarn = { fg = status.yellow.v70 },
    DiagnosticInfo = { fg = status.blue.v70 },
    DiagnosticHint = { fg = status.gray.v70 },
    DiagnosticOk = { fg = status.green.v70 },

    DiagnosticVirtualTextError = { fg = status.red.v40 },
    DiagnosticVirtualTextWarn = { fg = status.yellow.v40 },
    DiagnosticVirtualTextInfo = { fg = status.blue.v40 },
    DiagnosticVirtualTextHint = { fg = status.gray.v40 },
    DiagnosticVirtualTextOk = { fg = status.green.v40 },

    DiagnosticVirtualLinesError = { link = "DiagnosticVirtualTextError" },
    DiagnosticVirtualLinesWarn = { link = "DiagnosticVirtualTextWarn" },
    DiagnosticVirtualLinesInfo = { link = "DiagnosticVirtualTextInfo" },
    DiagnosticVirtualLinesHint = { link = "DiagnosticVirtualTextHint" },
    DiagnosticVirtualLinesOk = { link = "DiagnosticVirtualTextOk" },

    DiagnosticUnderlineError = { undercurl = true, sp = status.red.v40 },
    DiagnosticUnderlineWarn = { undercurl = true, sp = status.yellow.v40 },
    DiagnosticUnderlineInfo = { undercurl = true, sp = status.blue.v40 },
    DiagnosticUnderlineHint = { undercurl = true, sp = status.gray.v40 },
    DiagnosticUnderlineOk = { undercurl = true, sp = status.green.v40 },

    DiagnosticFloatingError = { link = "DiagnosticError" },
    DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint = { link = "DiagnosticHint" },
    DiagnosticFloatingOk = { link = "DiagnosticOk" },

    DiagnosticSignError = { link = "DiagnosticVirtualTextError" },
    DiagnosticSignWarn = { link = "DiagnosticVirtualTextWarn" },
    DiagnosticSignInfo = { link = "DiagnosticVirtualTextInfo" },
    DiagnosticSignHint = { link = "DiagnosticVirtualTextHint" },
    DiagnosticSignOk = { link = "DiagnosticVirtualTextOk" },

    DiagnosticDeprecated = { strikethrough = true },
    DiagnosticUnnecessary = { fg = status.gray.v40 },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
