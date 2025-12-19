local M = {}

function M.setup()
  ---@type table<string, vim.api.keyset.highlight>
  local groups = {
    GlyphPalette0 = { fg = vim.g.terminal_color_0 },
    GlyphPalette1 = { fg = vim.g.terminal_color_1 },
    GlyphPalette2 = { fg = vim.g.terminal_color_2 },
    GlyphPalette3 = { fg = vim.g.terminal_color_3 },
    GlyphPalette4 = { fg = vim.g.terminal_color_4 },
    GlyphPalette5 = { fg = vim.g.terminal_color_5 },
    GlyphPalette6 = { fg = vim.g.terminal_color_6 },
    GlyphPalette7 = { fg = vim.g.terminal_color_7 },
    GlyphPalette8 = { fg = vim.g.terminal_color_8 },
    GlyphPalette9 = { fg = vim.g.terminal_color_9 },
    GlyphPalette10 = { fg = vim.g.terminal_color_10 },
    GlyphPalette11 = { fg = vim.g.terminal_color_11 },
    GlyphPalette12 = { fg = vim.g.terminal_color_12 },
    GlyphPalette13 = { fg = vim.g.terminal_color_13 },
    GlyphPalette14 = { fg = vim.g.terminal_color_14 },
    GlyphPalette15 = { fg = vim.g.terminal_color_15 },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
