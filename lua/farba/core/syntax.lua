local M = {}

function M.setup()
  local colors = vim.g.farba.colors

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

    Ignore = { bg = colors.general.gray.v05 },
    Error = { fg = colors.status.red.v60 },
    Todo = { link = "@comment.todo" },

    Added = { fg = colors.status.green.v70 },
    Changed = { fg = colors.status.yellow.v70 },
    Removed = { fg = colors.status.red.v70 },

    DiagnosticError = { fg = colors.status.red.v70 },
    DiagnosticWarn = { fg = colors.status.yellow.v70 },
    DiagnosticInfo = { fg = colors.general.blue.v70 },
    DiagnosticHint = { fg = colors.general.gray.v70 },
    DiagnosticOk = { fg = colors.status.green.v70 },

    DiagnosticVirtualTextError = { fg = colors.status.red.v40 },
    DiagnosticVirtualTextWarn = { fg = colors.status.yellow.v40 },
    DiagnosticVirtualTextInfo = { fg = colors.general.blue.v40 },
    DiagnosticVirtualTextHint = { fg = colors.general.gray.v40 },
    DiagnosticVirtualTextOk = { fg = colors.status.green.v40 },

    DiagnosticVirtualLinesError = { link = "DiagnosticVirtualTextError" },
    DiagnosticVirtualLinesWarn = { link = "DiagnosticVirtualTextWarn" },
    DiagnosticVirtualLinesInfo = { link = "DiagnosticVirtualTextInfo" },
    DiagnosticVirtualLinesHint = { link = "DiagnosticVirtualTextHint" },
    DiagnosticVirtualLinesOk = { link = "DiagnosticVirtualTextOk" },

    DiagnosticUnderlineError = { undercurl = true, sp = colors.status.red.v40 },
    DiagnosticUnderlineWarn = {
      undercurl = true,
      sp = colors.status.yellow.v40,
    },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.general.blue.v40 },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.general.gray.v40 },
    DiagnosticUnderlineOk = { undercurl = true, sp = colors.status.green.v40 },

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
    DiagnosticUnnecessary = { fg = colors.general.gray.v40 },

    ["@variable"] = { fg = colors.syntax.blue.v80 },
    ["@variable.builtin"] = { fg = colors.syntax.blue.v80, bold = true },
    ["@variable.parameter"] = { link = "@variable" },
    ["@variable.parameter.builtin"] = { link = "@variable.builtin" },
    ["@variable.member"] = { link = "@variable" },

    ["@constant"] = { fg = colors.syntax.blue.v60 },
    ["@constant.builtin"] = { fg = colors.syntax.blue.v60, bold = true },
    ["@constant.macro"] = { link = "@constant" },

    ["@module"] = { fg = colors.syntax.green.v80 },
    ["@module.builtin"] = { fg = colors.syntax.green.v80, bold = true },
    ["@label"] = { fg = colors.syntax.magenta.v70 },

    ["@string"] = { fg = colors.syntax.yellow.v70 },
    ["@string.documentation"] = { link = "@string" },
    ["@string.regexp"] = { fg = colors.syntax.cyan.v80 },
    ["@string.escape"] = { fg = colors.syntax.magenta.v60 },
    ["@string.special"] = { fg = colors.syntax.yellow.v80 },
    ["@string.special.symbol"] = { link = "@string.special" },
    ["@string.special.path"] = { link = "@string.special" },
    ["@string.special.url"] = {
      fg = colors.syntax.yellow.v70,
      underline = true,
    },

    ["@character"] = { link = "@string" },
    ["@character.special"] = { link = "@string.special" },

    ["@boolean"] = { fg = colors.syntax.yellow.v85 },
    ["@number"] = { fg = colors.syntax.yellow.v90 },
    ["@number.float"] = { link = "@number" },

    ["@type"] = { fg = colors.syntax.green.v70 },
    ["@type.builtin"] = { fg = colors.syntax.green.v70, bold = true },
    ["@type.definition"] = { fg = colors.syntax.green.v70 },

    ["@attribute"] = { fg = colors.syntax.magenta.v70 },
    ["@attribute.builtin"] = { fg = colors.syntax.magenta.v70, bold = true },
    ["@property"] = { link = "@variable" },

    ["@function"] = { fg = colors.syntax.cyan.v85 },
    ["@function.builtin"] = { fg = colors.syntax.cyan.v85, bold = true },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { link = "@function" },

    ["@function.method"] = { link = "@function" },
    ["@function.method.call"] = { link = "@function" },

    ["@constructor"] = { link = "@function" },
    ["@constructor.lua"] = { link = "@punctuation.bracket" },
    ["@operator"] = { fg = colors.syntax.gray.v60 },

    ["@keyword"] = { fg = colors.syntax.magenta.v50 },
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

    ["@punctuation.delimiter"] = { fg = colors.syntax.gray.v60 },
    ["@punctuation.bracket"] = { link = "@punctuation.delimiter" },
    ["@punctuation.special"] = { fg = colors.syntax.magenta.v60 },

    ["@comment"] = { fg = colors.syntax.gray.v40 },
    ["@comment.documentation"] = { fg = colors.syntax.gray.v60 },

    ["@comment.error"] = { fg = colors.status.red.v60 },
    ["@comment.warning"] = { fg = colors.status.yellow.v60 },
    ["@comment.todo"] = { fg = colors.general.cyan.v60 },
    ["@comment.note"] = { fg = colors.general.blue.v60 },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { bold = true, fg = colors.syntax.blue.v80 },

    ["@markup.quote"] = { fg = colors.syntax.green.v70 },
    ["@markup.math"] = { fg = colors.syntax.yellow.v70 },

    ["@markup.link"] = { underline = true, fg = colors.syntax.blue.v60 },
    ["@markup.link.label"] = { link = "@markup.link" },
    ["@markup.link.url"] = { link = "@markup.link" },

    ["@markup.raw"] = { fg = colors.syntax.gray.v60 },
    ["@markup.raw.block"] = { fg = colors.syntax.gray.v60 },

    ["@markup.list"] = { fg = colors.syntax.blue.v60 },
    ["@markup.list.checked"] = { fg = colors.syntax.blue.v80 },
    ["@markup.list.unchecked"] = { fg = colors.syntax.blue.v60 },

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
    ["@lsp.type.class.markdown"] = { link = "@markup.link" },
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

    -- ["@lsp.mod.documentation"] = { link = "@comment.documentation" },
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.mutable"] = { italic = true },

    -- ["@lsp.mod.unsafe"] = { underline = true },
    ["@lsp.typemod.keyword.unsafe"] = { fg = colors.syntax.red.v50 },

    GlyphPalette0 = { fg = colors.general.gray.v30 },
    GlyphPalette1 = { fg = colors.general.red.v50 },
    GlyphPalette2 = { fg = colors.general.green.v50 },
    GlyphPalette3 = { fg = colors.general.yellow.v50 },
    GlyphPalette4 = { fg = colors.general.blue.v50 },
    GlyphPalette5 = { fg = colors.general.magenta.v50 },
    GlyphPalette6 = { fg = colors.general.cyan.v50 },
    GlyphPalette7 = { fg = colors.general.gray.v60 },
    GlyphPalette8 = { fg = colors.general.gray.v40 },
    GlyphPalette9 = { fg = colors.general.red.v70 },
    GlyphPalette10 = { fg = colors.general.green.v70 },
    GlyphPalette11 = { fg = colors.general.yellow.v70 },
    GlyphPalette12 = { fg = colors.general.blue.v70 },
    GlyphPalette13 = { fg = colors.general.magenta.v70 },
    GlyphPalette14 = { fg = colors.general.cyan.v70 },
    GlyphPalette15 = { fg = colors.general.gray.v80 },

    healthError = { fg = colors.status.red.v70 },
    healthSuccess = { fg = colors.status.green.v70 },
    healthWarning = { fg = colors.status.yellow.v70 },

    qfLineNr = { link = "LineNr" },
    qfFileName = { link = "Directory" },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
