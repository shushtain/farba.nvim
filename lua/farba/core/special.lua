local M = {}

function M.setup()
  ---@type Farba.Theme
  local farba = vim.g.farba
  local general = farba.palette.general

  local bg_normal = farba.transparency.normal and "NONE" or general.gray.v10
  local bg_float = farba.transparency.float and bg_normal or general.gray.v15
  local fg_float = farba.transparency.float and general.gray.v10
    or general.gray.v15

  ---@type table<string, vim.api.keyset.highlight>
  local groups = {
    NoneNormal = { fg = general.gray.v10, bg = bg_normal },
    NoneFloat = { fg = fg_float, bg = bg_float },
    NoFgNormal = { fg = general.gray.v10 },
    NoBgNormal = { bg = bg_normal },
    NoFgFloat = { fg = fg_float },
    NoBgFloat = { bg = bg_float },

    qfFileName = { link = "Directory" },
    qfLineNr = { link = "LineNr" },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
