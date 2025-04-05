-- minty-lemon.lua

local M = {}

-- Colors from minty-lemon.sh
local colors = {
  bg = "#1e222a", -- Terminal and neovim background
  bg_l1 = "#232831", -- Lualine across, 1 color to the right of background
  bg_l2 = "#282e39", -- Markdown codeblock, 2 to the right of background
  bg_l3 = "#2d3441", -- Background of inactive tmux pane, 3 to the right of background
  bg_l5 = "#373f4d", -- Line across cursor, 5 to the right of background
  bg_l7 = "#414a59", -- Tmux inactive windows, 7 colors to the right of background
  fg = "#c6c8d1", -- Cursor and tmux windows text
  sel = "#4d576b", -- Selected text
  cursor = "#5b677d", -- Cursor color, color04 9 tones to the left in colorhexa
  cmt = "#6c778d", -- Comments
  -- Markdown headings
  mkd_h1 = "#987afb", -- Markdown heading 1 - color04
  mkd_h2 = "#37f499", -- Markdown heading 2 - color02
  mkd_h3 = "#ffc13f", -- Markdown heading 3 - color03
  mkd_h4 = "#5b4996", -- Markdown heading 4 - color01
  mkd_h5 = "#61d459", -- Markdown heading 5 - color05
  mkd_h6 = "#ff964f", -- Markdown heading 6 - color08
  -- Underlines
  spbad = "#af6254", -- Underline spellbad, color02 7 tones to the left in colorhexa
  spcap = "#af6254", -- Underline spellcap, color04 7 tones to the left in colorhexa
}

M.colors = colors

M.colorscheme = function()
  vim.cmd("hi clear")
  vim.o.termguicolors = true

  -- Base colors
  vim.api.nvim_set_hl(0, "Normal", { bg = colors.bg, fg = colors.fg })
  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.bg_l5, bg = colors.bg })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.cursor, bg = colors.bg })
  vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = colors.bg_l1 })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.fg, bg = colors.bg_l3 })
  vim.api.nvim_set_hl(0, "Visual", { bg = colors.sel })
  vim.api.nvim_set_hl(0, "Comment", { fg = colors.cmt })
  vim.api.nvim_set_hl(0, "Cursor", { bg = colors.cursor, fg = colors.bg })

  -- Syntax highlighting
  vim.api.nvim_set_hl(0, "Keyword", { fg = colors.mkd_h3 })
  vim.api.nvim_set_hl(0, "String", { fg = colors.mkd_h5 })
  vim.api.nvim_set_hl(0, "Character", { fg = colors.mkd_h5 })
  vim.api.nvim_set_hl(0, "Number", { fg = colors.mkd_h4 })
  vim.api.nvim_set_hl(0, "Boolean", { fg = colors.mkd_h4 })
  vim.api.nvim_set_hl(0, "Function", { fg = colors.mkd_h2 })
  vim.api.nvim_set_hl(0, "Type", { fg = colors.mkd_h1 })
  vim.api.nvim_set_hl(0, "Constant", { fg = colors.mkd_h1 })
  vim.api.nvim_set_hl(0, "Identifier", { fg = colors.fg })

  -- Markdown
  vim.api.nvim_set_hl(0, "markdownH1", { fg = colors.mkd_h1, bold = true })
  vim.api.nvim_set_hl(0, "markdownH2", { fg = colors.mkd_h2, bold = true })
  vim.api.nvim_set_hl(0, "markdownH3", { fg = colors.mkd_h3, bold = true })
  vim.api.nvim_set_hl(0, "markdownH4", { fg = colors.mkd_h4, bold = true })
  vim.api.nvim_set_hl(0, "markdownH5", { fg = colors.mkd_h5, bold = true })
  vim.api.nvim_set_hl(0, "markdownH6", { fg = colors.mkd_h6, bold = true })
  vim.api.nvim_set_hl(0, "markdownCodeBlock", { fg = colors.bg_l2, bg = colors.bg_l2 })

  -- Spell checking
  vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = colors.spbad })
  vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = colors.spcap })
end

M.setup = function()
  vim.notify("alive")
end

return M
