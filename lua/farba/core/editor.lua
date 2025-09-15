local M = {}

function M.setup()
  local colors = vim.g.farba.colors

  local background = vim.g.farba.background and colors.general.gray.v10
    or "NONE"
  local float = vim.g.farba.fill_floats and colors.general.gray.v15
    or background

  local groups = {
    Normal = { fg = colors.general.gray.v80, bg = background },
    NormalNC = { link = "Normal" },
    WinSeparator = { fg = colors.general.gray.v05 },

    Cursor = { fg = colors.general.gray.v10, bg = colors.general.gray.v80 },
    TermCursor = { link = "Cursor" },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },

    ColorColumn = { bg = colors.general.gray.v13 },
    CursorLine = { bg = colors.general.gray.v13 },
    CursorColumn = { link = "CursorLine" },

    LineNr = { fg = colors.general.gray.v40 },
    CursorLineNr = { fg = colors.general.gray.v60 },
    LineNrAbove = { link = "LineNr" },
    LineNrBelow = { link = "LineNr" },
    SignColumn = { link = "LineNr" },
    FoldColumn = { link = "SignColumn" },
    CursorLineSign = { link = "CursorLineNr" },
    CursorLineFold = { link = "CursorLineNr" },

    Search = { bg = colors.general.yellow.v15 },
    CurSearch = { bg = colors.general.yellow.v20 },
    Substitute = { link = "Search" },
    IncSearch = { link = "CurSearch" },
    MatchParen = { bg = colors.general.gray.v20 },

    ComplMatchIns = { fg = colors.general.gray.v40 },
    SnippetTabstop = { bg = colors.general.gray.v20 },

    MsgArea = { fg = colors.general.gray.v80 },
    ModeMsg = { fg = colors.general.green.v70 },
    ErrorMsg = { fg = colors.status.red.v70 },
    WarningMsg = { fg = colors.status.yellow.v70 },
    Question = { fg = colors.general.cyan.v70 },
    MoreMsg = { fg = colors.general.cyan.v70 },
    MsgSeparator = { link = "Whitespace" },

    QuickFixLine = { fg = colors.general.cyan.v70 },
    Directory = { fg = colors.general.cyan.v70 },
    Title = { fg = colors.general.gray.v80, bold = true },
    Conceal = { fg = colors.general.gray.v40 },
    Folded = {
      fg = colors.general.gray.v40,
      bg = colors.general.gray.v13,
      italic = true,
    },
    NonText = { fg = colors.general.gray.v40 },
    SpecialKey = { link = "NonText" },
    Whitespace = { fg = colors.general.gray.v20 },
    EndOfBuffer = { link = "Whitespace" },

    NormalFloat = { fg = colors.general.gray.v80, bg = float },
    FloatBorder = { fg = colors.general.gray.v40, bg = float },
    FloatTitle = { fg = colors.general.gray.v60, bg = float, bold = true },
    FloatFooter = { fg = colors.general.gray.v60, bg = float },

    Pmenu = { bg = colors.general.gray.v15 },
    PmenuSel = { bg = colors.general.gray.v20 },
    PmenuKind = { fg = colors.general.gray.v40 },
    PmenuKindSel = { link = "PmenuKind" },
    PmenuExtra = { fg = colors.general.gray.v60 },
    PmenuExtraSel = { link = "PmenuExtra" },
    PmenuSbar = { bg = colors.general.gray.v15 },
    PmenuThumb = { bg = colors.general.gray.v30 },
    PmenuMatch = { bold = true },
    PmenuMatchSel = { link = "PmenuMatch" },
    WildMenu = { link = "PmenuSel" },

    DiffAdd = { bg = colors.status.green.v15 },
    DiffChange = { bg = colors.status.yellow.v15 },
    DiffDelete = { bg = colors.status.red.v15 },
    DiffText = { bg = colors.status.yellow.v20 },

    Visual = { bg = colors.general.gray.v20 },
    VisualNOS = { bg = colors.general.gray.v15 },

    SpellBad = { underdashed = true, sp = colors.general.gray.v40 },
    SpellCap = { underdotted = true, sp = colors.general.gray.v40 },
    SpellLocal = { underdotted = true, sp = colors.general.gray.v40 },
    SpellRare = { underdotted = true, sp = colors.general.gray.v40 },

    StatusLine = {
      fg = colors.general.gray.v10,
      bg = colors.general.gray.v60,
      bold = true,
    },
    StatusLineNC = {
      fg = colors.general.gray.v60,
      bg = colors.general.gray.v20,
    },
    StatusLineTerm = { link = "StatusLine" },
    StatusLineTermNC = { link = "StatusLineNC" },

    TabLine = { fg = colors.general.gray.v40, bg = colors.general.gray.v05 },
    TabLineFill = { link = "TabLine" },
    TabLineSel = { fg = colors.general.gray.v60, bold = true },

    WinBar = { fg = colors.general.gray.v40, bold = true, italic = true },
    WinBarNC = { link = "WinBar" },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
