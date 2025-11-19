local M = {}

function M.setup()
  ---@type Farba.Theme
  local farba = vim.g.farba
  local general = farba.palette.general
  local status = farba.palette.status

  local bg_normal = farba.transparency.normal and "NONE" or general.gray.v10
  local bg_float = farba.transparency.float and bg_normal or general.gray.v15

  ---@type table<string, vim.api.keyset.highlight>
  local groups = {
    Normal = { fg = general.gray.v80, bg = bg_normal },
    NormalNC = { link = "Normal" },
    WinSeparator = { fg = general.gray.v05 },

    Cursor = { fg = general.gray.v10, bg = general.gray.v80 },
    TermCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    lCursor = { link = "Cursor" },

    CursorLine = { bg = general.gray.v13 },
    CursorColumn = { link = "CursorLine" },
    ColorColumn = { link = "CursorLine" },

    SignColumn = { fg = general.gray.v40 },
    FoldColumn = { link = "SignColumn" },
    CursorLineSign = { link = "SignColumn" },
    CursorLineFold = { link = "FoldColumn" },
    Folded = { fg = general.gray.v60, bg = general.gray.v13 },

    CursorLineNr = { fg = general.gray.v60 },
    LineNr = { link = "SignColumn" },
    LineNrAbove = { link = "LineNr" },
    LineNrBelow = { link = "LineNr" },

    Visual = { bg = general.gray.v20 },
    VisualNOS = { bg = general.gray.v15 },
    MatchParen = { link = "Visual" },
    SnippetTabstop = { link = "Visual" },
    -- ComplMatchIns = {}, -- shows syntax

    Search = { bg = general.yellow.v15 },
    CurSearch = { bg = general.yellow.v20 },
    IncSearch = { link = "CurSearch" },
    Substitute = { link = "Search" },

    MsgArea = { link = "Normal" },
    MsgSeparator = { link = "WinSeparator" },
    ErrorMsg = { fg = status.red.v70 },
    WarningMsg = { fg = status.yellow.v70 },
    ModeMsg = { fg = general.green.v70 },
    MoreMsg = { fg = general.cyan.v70 },
    Question = { link = "MoreMsg" },
    QuickFixLine = { fg = general.cyan.v70 },
    Directory = { fg = general.cyan.v70 },
    Title = { fg = general.gray.v80, bold = true },

    DiffAdd = { bg = status.green.v25 },
    DiffChange = { bg = status.gray.v15 },
    DiffDelete = { fg = status.red.v40 },
    DiffText = { bg = status.yellow.v20 },

    Conceal = { fg = general.gray.v40 },
    NonText = { fg = general.gray.v40 },
    SpecialKey = { link = "NonText" },
    Whitespace = { fg = general.gray.v20 },
    EndOfBuffer = { link = "Whitespace" },

    NormalFloat = { fg = general.gray.v80, bg = bg_float },
    FloatBorder = { fg = general.gray.v40, bg = bg_float },
    FloatTitle = { fg = general.gray.v60, bg = bg_float, bold = true },
    FloatFooter = { fg = general.gray.v60, bg = bg_float },

    Pmenu = { bg = general.gray.v15 },
    PmenuSel = { bg = general.gray.v20 },
    PmenuKind = { fg = general.gray.v40 },
    PmenuKindSel = { link = "PmenuKind" },
    PmenuExtra = { fg = general.gray.v60 },
    PmenuExtraSel = { link = "PmenuExtra" },
    PmenuSbar = { link = "Pmenu" },
    PmenuThumb = { bg = general.gray.v30 },
    PmenuMatch = { bold = true },
    PmenuMatchSel = { link = "PmenuMatch" },
    WildMenu = { link = "PmenuSel" },

    SpellBad = { underdashed = true, sp = status.gray.v40 },
    SpellCap = { underdotted = true, sp = status.gray.v40 },
    SpellLocal = { link = "SpellCap" },
    SpellRare = { link = "SpellCap" },

    StatusLine = { fg = general.gray.v60, bg = general.gray.v20 },
    StatusLineNC = { fg = general.gray.v40, bg = general.gray.v15 },
    StatusLineTerm = { link = "StatusLine" },
    StatusLineTermNC = { link = "StatusLineNC" },

    TabLine = { fg = general.gray.v40, bg = bg_normal },
    TabLineSel = { fg = general.gray.v60, bg = bg_normal, bold = true },
    TabLineFill = { link = "TabLine" },

    WinBar = { fg = general.gray.v40, italic = true },
    WinBarNC = { link = "WinBar" },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
