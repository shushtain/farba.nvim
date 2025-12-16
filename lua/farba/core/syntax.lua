local M = {}

function M.setup()
  ---@type Farba.Theme
  local farba = vim.g.farba
  local general = farba.palette.general
  local status = farba.palette.status
  local syntax = farba.palette.syntax

  ---@type table<string, vim.api.keyset.highlight>
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
    Label = { link = "@keyword" },
    Operator = { link = "@operator" },
    Keyword = { link = "@keyword" },
    Exception = { link = "@keyword.exception" },
    PreProc = { link = "@keyword.directive" },
    Include = { link = "@keyword.import" },
    Define = { link = "@keyword.directive" },
    Macro = { link = "@function.macro" },
    PreCondit = { link = "@keyword.directive" },

    Type = { link = "@type" },
    StorageClass = { link = "@keyword.modifier" },
    Structure = { link = "@type" },
    Typedef = { link = "@type.definition" },

    Special = { link = "@variable.builtin" },
    SpecialChar = { link = "@string.special" },
    Tag = { link = "@label" },
    Delimiter = { link = "@punctuation.delimiter" },
    SpecialComment = { link = "@comment.documentation" },
    Debug = { link = "@keyword.debug" },

    Underlined = { link = "@markup.underline" },
    Ignore = { bg = general.gray.v05 },
    Error = { link = "@error" },
    Todo = { link = "@comment.todo" },

    Added = { link = "@diff.plus" },
    Changed = { link = "@diff.delta" },
    Removed = { link = "@diff.minus" },

    ["@variable"] = { fg = syntax.blue.v80 },
    ["@variable.builtin"] = { fg = syntax.blue.v80, bold = true },
    ["@variable.parameter"] = { link = "@variable" },
    ["@variable.parameter.builtin"] = { link = "@variable.builtin" },
    ["@variable.member"] = { link = "@variable" },

    ["@constant"] = { fg = syntax.blue.v60 },
    ["@constant.builtin"] = { fg = syntax.blue.v60, bold = true },
    ["@constant.macro"] = { link = "@constant" },

    ["@module"] = { fg = syntax.green.v80 },
    ["@module.builtin"] = { fg = syntax.green.v80, bold = true },
    ["@label"] = { fg = syntax.magenta.v70 },

    ["@string"] = { fg = syntax.yellow.v70 },
    ["@string.documentation"] = { link = "@string" },
    ["@string.regexp"] = { fg = syntax.cyan.v80 },
    ["@string.escape"] = { fg = syntax.magenta.v60 },
    ["@string.special"] = { fg = syntax.yellow.v80 },
    ["@string.special.symbol"] = { link = "@string.special" },
    ["@string.special.path"] = { link = "@string.special" },
    ["@string.special.url"] = { fg = syntax.yellow.v70, underline = true },

    ["@character"] = { link = "@string" },
    ["@character.special"] = { link = "@string.special" },

    ["@boolean"] = { fg = syntax.yellow.v85 },
    ["@number"] = { fg = syntax.yellow.v90 },
    ["@number.float"] = { link = "@number" },

    ["@type"] = { fg = syntax.green.v70 },
    ["@type.builtin"] = { fg = syntax.green.v70, bold = true },
    ["@type.definition"] = { fg = syntax.green.v70 },

    ["@attribute"] = { fg = syntax.magenta.v70 },
    ["@attribute.builtin"] = { fg = syntax.magenta.v70, bold = true },
    ["@property"] = { link = "@variable" },

    ["@function"] = { fg = syntax.cyan.v80 },
    ["@function.builtin"] = { fg = syntax.cyan.v80, bold = true },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { link = "@function" },

    ["@function.method"] = { link = "@function" },
    ["@function.method.call"] = { link = "@function" },

    ["@constructor"] = { link = "@function" },
    ["@constructor.lua"] = { link = "@punctuation.bracket" },
    ["@operator"] = { fg = syntax.gray.v60 },

    ["@keyword"] = { fg = syntax.magenta.v50 },
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

    ["@punctuation"] = { fg = syntax.gray.v50 },
    ["@punctuation.delimiter"] = { link = "@punctuation" },
    ["@punctuation.bracket"] = { link = "@punctuation" },
    ["@punctuation.special"] = { fg = syntax.magenta.v60 },

    ["@comment"] = { fg = syntax.gray.v40 },
    ["@comment.documentation"] = { fg = syntax.gray.v60 },
    ["@comment.error"] = { fg = status.red.v60 },
    ["@comment.warning"] = { fg = status.yellow.v60 },
    ["@comment.todo"] = { fg = status.cyan.v60 },
    ["@comment.note"] = { fg = status.blue.v60 },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { bold = true, fg = syntax.blue.v80 },
    ["@markup.quote"] = { fg = syntax.green.v70 },
    ["@markup.math"] = { fg = syntax.yellow.v70 },
    ["@markup.link"] = { underline = true, fg = syntax.blue.v60 },
    ["@markup.link.label"] = { link = "@markup.link" },
    ["@markup.link.url"] = { link = "@markup.link" },
    ["@markup.raw"] = { fg = syntax.gray.v60 },
    ["@markup.raw.block"] = { fg = syntax.gray.v60 },
    ["@markup.list"] = { fg = syntax.blue.v60 },
    ["@markup.list.checked"] = { fg = syntax.blue.v80 },
    ["@markup.list.unchecked"] = { fg = syntax.blue.v60 },

    ["@diff.plus"] = { fg = status.green.v70 },
    ["@diff.delta"] = { fg = status.yellow.v70 },
    ["@diff.minus"] = { fg = status.red.v70 },

    ["@tag"] = { link = "@constant" },
    ["@tag.builtin"] = { link = "@constant" },
    ["@tag.attribute"] = { link = "@variable" },
    ["@tag.delimiter"] = { link = "@punctuation.delimiter" },

    ["@conceal"] = { link = "Conceal" },
    ["@error"] = { fg = status.red.v60 },

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

    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.mutable"] = { italic = true },

    -- ["@lsp.typemod.keyword.unsafe"] = { fg = syntax.red.v50 },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
