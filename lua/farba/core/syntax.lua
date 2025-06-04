local M = {}

function M.setup(palette)
	local groups = {
		Comment = { link = "@comment" },

		Constant = { link = "@constant" },
		String = { link = "@string" },
		Character = { link = "@character" },
		Number = { link = "@number" },
		Boolean = { link = "@boolean" },
		Float = { link = "@number.float" },

		Identifier = { link = "@variable" },
		Function = { link = "@function" },

		Statement = { link = "@keyword" },
		Conditional = { link = "@keyword.conditional" },
		Repeat = { link = "@keyword.repeat" },
		Label = { link = "@keyword.conditional" },
		Operator = { link = "@operator" },
		Keyword = { link = "@keyword" },
		Exception = { link = "@keyword.exception" },

		PreProc = { link = "@keyword.directive" },
		Include = { link = "@keyword.import" },
		Define = { link = "@keyword.directive.define" },
		Macro = { link = "@function.macro" },
		PreCondit = { link = "@keyword.directive" },

		Type = { link = "@type" },
		StorageClass = { link = "@keyword.modifier" },
		Structure = { link = "@type" },
		Typedef = { link = "@type.definition" },

		Special = { link = "@variable.builtin" },
		SpecialChar = { link = "@string.escape" },
		Tag = { link = "@label" },
		Delimiter = { link = "@punctuation.delimiter" },
		SpecialComment = { link = "@comment.documentation" },
		Debug = { link = "@keyword.debug" },

		Underlined = { underline = true },

		Ignore = { bg = palette.general.gray.v05 },
		Error = { fg = palette.status.red.v60 },
		Todo = { link = "@comment.todo" },

		Added = { fg = palette.status.green.v70 },
		Changed = { fg = palette.status.yellow.v70 },
		Removed = { fg = palette.status.red.v70 },

		DiagnosticError = { fg = palette.status.red.v70 },
		DiagnosticVirtualTextError = { fg = palette.status.red.v40 },
		DiagnosticUnderlineError = { undercurl = true, sp = palette.status.red.v60 },
		DiagnosticFloatingError = { link = "DiagnosticError" },
		DiagnosticSignError = { fg = palette.status.red.v40 },

		DiagnosticWarn = { fg = palette.status.yellow.v70 },
		DiagnosticVirtualTextWarn = { fg = palette.status.yellow.v40 },
		DiagnosticUnderlineWarn = { undercurl = true, sp = palette.status.yellow.v60 },
		DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
		DiagnosticSignWarn = { fg = palette.status.yellow.v40 },

		DiagnosticInfo = { fg = palette.general.blue.v70 },
		DiagnosticVirtualTextInfo = { fg = palette.general.blue.v40 },
		DiagnosticUnderlineInfo = { underline = true, sp = palette.general.blue.v60 },
		DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
		DiagnosticSignInfo = { fg = palette.general.blue.v40 },

		DiagnosticHint = { fg = palette.general.gray.v60 },
		DiagnosticVirtualTextHint = { fg = palette.general.gray.v40 },
		DiagnosticUnderlineHint = { underline = true, sp = palette.general.gray.v40 },
		DiagnosticFloatingHint = { link = "DiagnosticHint" },
		DiagnosticSignHint = { fg = palette.general.gray.v40 },

		DiagnosticOk = { fg = palette.status.green.v70 },
		DiagnosticVirtualTextOk = { fg = palette.status.green.v40 },
		DiagnosticUnderlineOk = { underline = true, sp = palette.status.green.v60 },
		DiagnosticFloatingOk = { link = "DiagnosticOk" },
		DiagnosticSignOk = { fg = palette.status.green.v40 },

		DiagnosticDeprecated = { strikethrough = true },
		DiagnosticUnnecessary = { fg = palette.general.gray.v40, italic = true },

		["@variable"] = { fg = palette.syntax.blue.v80 },
		["@variable.builtin"] = { fg = palette.syntax.blue.v80, bold = true },
		["@variable.parameter"] = { link = "@variable" },
		["@variable.parameter.builtin"] = { link = "@variable.builtin" },
		["@variable.member"] = { link = "@variable" },

		["@constant"] = { fg = palette.syntax.blue.v60 },
		["@constant.builtin"] = { link = "@boolean" },
		["@constant.macro"] = { link = "@constant" },

		["@module"] = { fg = palette.syntax.green.v80 },
		["@module.builtin"] = { link = "@module" },
		["@label"] = { fg = palette.syntax.magenta.v70 },

		["@string"] = { fg = palette.syntax.yellow.v70 },
		-- ["@string.documentation"] = { fg = palette.syntax.yellow.v60 },
		["@string.documentation"] = { link = "@comment.documentation" },
		["@string.regexp"] = { fg = palette.syntax.yellow.v80 },
		["@string.escape"] = { fg = palette.syntax.magenta.v60 },
		["@string.special"] = { fg = palette.syntax.yellow.v70 },
		["@string.special.symbol"] = { link = "@string.special" },
		["@string.special.path"] = { link = "@string.special" },
		["@string.special.url"] = { fg = palette.syntax.yellow.v70, underline = true },

		["@character"] = { link = "@string" },
		["@character.special"] = { link = "@string.special" },

		["@boolean"] = { fg = palette.syntax.yellow.v90 },
		["@number"] = { fg = palette.syntax.yellow.v90 },
		["@number.float"] = { link = "@number" },

		["@type"] = { fg = palette.syntax.green.v70 },
		["@type.builtin"] = { link = "@type" },
		["@type.definition"] = { fg = palette.syntax.green.v80 },

		["@attribute"] = { fg = palette.syntax.magenta.v70 },
		["@attribute.builtin"] = { link = "@attribute" },
		["@property"] = { link = "@variable" },

		["@function"] = { fg = palette.syntax.cyan.v90 },
		["@function.builtin"] = { link = "@function" },
		["@function.call"] = { link = "@function" },
		["@function.macro"] = { link = "@function" },

		["@function.method"] = { link = "@function" },
		["@function.method.call"] = { link = "@function" },

		["@constructor"] = { link = "@function" },
		["@constructor.lua"] = { link = "@punctuation.bracket" },
		["@operator"] = { fg = palette.syntax.gray.v60 },

		["@keyword"] = { fg = palette.syntax.magenta.v50 },
		["@keyword.coroutine"] = { link = "@keyword" },
		["@keyword.function"] = { link = "@keyword" },
		["@keyword.operator"] = { link = "@keyword" },
		["@keyword.import"] = { link = "@keyword" },
		["@keyword.type"] = { link = "@keyword" },
		["@keyword.modifier"] = { link = "@keyword" },
		["@keyword.repeat"] = { link = "@keyword" },
		["@keyword.return"] = { link = "@keyword" },
		["@keyword.debug"] = { link = "@keyword" },
		["@keyword.exception"] = { link = "@keyword" },

		["@keyword.conditional"] = { link = "@keyword" },
		["@keyword.conditional.ternary"] = { link = "@operator" },

		["@keyword.directive"] = { link = "@keyword" },
		["@keyword.directive.define"] = { link = "@keyword" },

		["@punctuation.delimiter"] = { fg = palette.syntax.gray.v60 },
		["@punctuation.bracket"] = { link = "@punctuation.delimiter" },
		["@punctuation.special"] = { fg = palette.syntax.magenta.v60 },

		["@comment"] = { fg = palette.syntax.gray.v40 },
		["@comment.documentation"] = { fg = palette.syntax.gray.v60 },

		["@comment.error"] = { fg = palette.status.red.v60 },
		["@comment.warning"] = { fg = palette.status.yellow.v60 },
		["@comment.todo"] = { fg = palette.general.cyan.v60, bold = true },
		["@comment.note"] = { fg = palette.general.blue.v50 },

		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },

		["@markup.heading"] = { bold = true, fg = palette.syntax.blue.v80 },

		["@markup.quote"] = { fg = palette.syntax.green.v70 },
		["@markup.math"] = { fg = palette.syntax.yellow.v70 },

		["@markup.link"] = { underline = true, fg = palette.syntax.blue.v60 },
		["@markup.link.label"] = { link = "@markup.link" },
		["@markup.link.url"] = { link = "@markup.link" },

		["@markup.raw"] = { fg = palette.syntax.gray.v70 },
		["@markup.raw.block"] = { fg = palette.syntax.gray.v70 },

		["@markup.list"] = { fg = palette.syntax.blue.v60 },
		["@markup.list.checked"] = { fg = palette.syntax.cyan.v80 },
		["@markup.list.unchecked"] = { fg = palette.syntax.cyan.v60 },

		["@diff.plus"] = { link = "Added" },
		["@diff.minus"] = { link = "Removed" },
		["@diff.delta"] = { link = "Changed" },

		["@tag"] = { link = "@constant" },
		["@tag.builtin"] = { link = "@constant" },
		["@tag.attribute"] = { link = "@variable" },
		["@tag.delimiter"] = { link = "@punctuation.delimiter" },

		["@conceal"] = { link = "Conceal" },
		["@error"] = { link = "Error" },

		["@lsp.type.class"] = { link = "@type.definition" },
		["@lsp.type.comment"] = { link = "@comment" },
		["@lsp.type.decorator"] = { link = "@attribute" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.event"] = { link = "@type" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.interface"] = { link = "@attribute" },
		["@lsp.type.keyword"] = { link = "@keyword" },
		["@lsp.type.macro"] = { link = "@function.macro" },
		["@lsp.type.method"] = { link = "@function.method" },
		["@lsp.type.modifier"] = { link = "@keyword.modifier" },
		["@lsp.type.namespace"] = { link = "@module" },
		["@lsp.type.boolean"] = { link = "@boolean" },
		["@lsp.type.number"] = { link = "@number" },
		["@lsp.type.operator"] = { link = "@operator" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.string"] = { link = "@string" },
		["@lsp.type.escapeSequence"] = { link = "@string.escape" },
		["@lsp.type.regexp"] = { link = "@string.regexp" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeAlias"] = { link = "@type.definition" },
		["@lsp.type.builtinType"] = { link = "@type.builtin" },
		["@lsp.type.typeParameter"] = { link = "@variable.parameter" },
		["@lsp.type.variable"] = { link = "@variable" },
		["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
		["@lsp.type.formatSpecifier"] = { link = "@string.escape" },
		["@lsp.type.unresolvedReference"] = { link = "@error" },
		["@lsp.mod.documentation"] = { link = "@comment.documentation" },
		["@lsp.mod.deprecated"] = { strikethrough = true },
		["@lsp.mod.mutable"] = { italic = true },

		GlyphPalette0 = { fg = palette.general.gray.v30 },
		GlyphPalette1 = { fg = palette.general.red.v60 },
		GlyphPalette2 = { fg = palette.general.green.v60 },
		GlyphPalette3 = { fg = palette.general.yellow.v60 },
		GlyphPalette4 = { fg = palette.general.blue.v60 },
		GlyphPalette5 = { fg = palette.general.magenta.v60 },
		GlyphPalette6 = { fg = palette.general.cyan.v60 },
		GlyphPalette7 = { fg = palette.general.gray.v80 },
		GlyphPalette8 = { fg = palette.general.gray.v40 },
		GlyphPalette9 = { fg = palette.general.red.v70 },
		GlyphPalette10 = { fg = palette.general.green.v70 },
		GlyphPalette11 = { fg = palette.general.yellow.v70 },
		GlyphPalette12 = { fg = palette.general.blue.v70 },
		GlyphPalette13 = { fg = palette.general.magenta.v70 },
		GlyphPalette14 = { fg = palette.general.cyan.v70 },
		GlyphPalette15 = { fg = palette.general.gray.v90 },

		healthError = { fg = palette.status.red.v70 },
		healthSuccess = { fg = palette.status.green.v70 },
		healthWarning = { fg = palette.status.yellow.v70 },

		qfLineNr = { link = "LineNr" },
		qfFileName = { link = "Directory" },
	}

	for key, value in pairs(groups) do
		vim.api.nvim_set_hl(0, key, value)
	end
end

return M
