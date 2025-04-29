local M = {}

function M.setup(palette)
	local groups = {
		--[[ GENERAL ]]
		Normal = { fg = palette.general.gray.v90, bg = palette.general.gray.v10 },
		NormalNC = { link = "Normal" }, -- non-current
		WinSeparator = { fg = palette.general.gray.v05 },

		--[[ CURSOR ]]
		Cursor = { fg = palette.general.gray.v10, bg = palette.general.gray.v90 },
		TermCursor = { link = "Cursor" },
		-- for IME languages
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },

		--[[ GUIDES ]]
		ColorColumn = { bg = palette.general.gray.v15 }, -- line length limit
		CursorLine = { bg = palette.general.gray.v15 },
		CursorColumn = { link = "CursorLine" },

		--[[ GUTTER ]]
		LineNr = { fg = palette.general.gray.v40 },
		CursorLineNr = { fg = palette.general.gray.v60 },
		LineNrAbove = { link = "LineNr" },
		LineNrBelow = { link = "LineNr" },
		SignColumn = { link = "LineNr" },
		FoldColumn = { link = "SignColumn" }, -- test
		CursorLineSign = { link = "CursorLineNr" },
		CursorLineFold = { link = "CursorLineNr" },

		--[[ SEARCH ]]
		Search = { bg = palette.general.yellow.v15 },
		CurSearch = { bg = palette.general.yellow.v20 },
		Substitute = { link = "Search" },
		IncSearch = { link = "CurSearch" }, -- interactive mode
		MatchParen = { bg = palette.general.gray.v20 },

		--[[ COMPLETION ]]
		ComplMatchIns = { fg = palette.general.gray.v40 },
		SnippetTabstop = { bg = palette.general.gray.v20 },

		--[[ MESSAGES ]]
		MsgArea = { fg = palette.general.gray.v80 },
		ModeMsg = { fg = palette.general.green.v70 },
		ErrorMsg = { fg = palette.status.red.v70 },
		WarningMsg = { fg = palette.status.yellow.v70 },
		Question = { fg = palette.general.cyan.v70 },
		MoreMsg = { fg = palette.general.cyan.v70 },
		MsgSeparator = { link = "StatusLine" }, -- test

		--[[ SPECIAL ]]
		QuickFixLine = { fg = palette.general.cyan.v70 },
		Directory = { fg = palette.general.cyan.v70 },
		Title = { fg = palette.general.gray.v80, bold = true },
		Conceal = { fg = palette.general.gray.v40 },
		Folded = { bg = palette.general.gray.v05 },
		NonText = { fg = palette.general.gray.v40 },
		SpecialKey = { link = "NonText" }, -- things like "^I", "[RO]", etc
		Whitespace = { fg = palette.general.gray.v20 },
		EndOfBuffer = { link = "Whitespace" },

		--[[ FLOATING WINDOWS ]]
		NormalFloat = { bg = palette.general.gray.v20 },
		FloatBorder = { fg = palette.general.gray.v40, bg = palette.general.gray.v10 },
		FloatTitle = { link = "Title" },
		FloatFooter = { fg = palette.general.gray.v60 },

		--[[ POPUP MENUS ]]
		Pmenu = { bg = palette.general.gray.v15 },
		PmenuSel = { bg = palette.general.gray.v20 },
		PmenuKind = { fg = palette.general.gray.v40 },
		PmenuKindSel = { link = "PmenuKind" },
		PmenuExtra = { fg = palette.general.gray.v60 },
		PmenuExtraSel = { link = "PmenuExtra" },
		PmenuSbar = { bg = palette.general.gray.v15 },
		PmenuThumb = { bg = palette.general.gray.v30 },
		PmenuMatch = { bold = true },
		PmenuMatchSel = { link = "PmenuMatch" },
		WildMenu = { link = "PmenuSel" },

		--[[ DIFFS ]]
		DiffAdd = { bg = palette.status.green.v15 },
		DiffChange = { bg = palette.status.yellow.v15 },
		DiffDelete = { bg = palette.status.red.v15 },
		DiffText = { bg = palette.status.yellow.v20 },

		--[[ SELECTION ]]
		Visual = { bg = palette.general.gray.v15 },
		VisualNOS = { bg = palette.general.gray.v15 },

		--[[ SPELLING ]]
		SpellBad = { underdashed = true, sp = palette.general.gray.v40 },
		SpellCap = { underdashed = true, sp = palette.general.gray.v40 },
		SpellLocal = { underdotted = true, sp = palette.general.gray.v40 },
		SpellRare = { underdotted = true, sp = palette.general.gray.v40 },

		--[[ STATUS LINE ]]
		StatusLine = { fg = palette.general.gray.v10, bg = palette.general.gray.v60, bold = true },
		StatusLineNC = { fg = palette.general.gray.v60, bg = palette.general.gray.v20 },
		StatusLineTerm = { link = "StatusLine" },
		StatusLineTermNC = { link = "StatusLineNC" },

		--[[ TAB LINE ]]
		TabLine = { fg = palette.general.gray.v60, bg = palette.general.gray.v05 },
		TabLineFill = { link = "TabLine" },
		TabLineSel = { fg = palette.general.gray.v70, bold = true },

		--[[ WINDOW BAR ]]
		WinBar = { fg = palette.general.gray.v60, bold = true, italic = true },
		WinBarNC = { link = "WinBar" },
	}

	for key, value in pairs(groups) do
		vim.api.nvim_set_hl(0, key, value)
	end
end

return M
