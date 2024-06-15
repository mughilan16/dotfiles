local status, n = pcall(require, "neosolarized")
if (not status) then return end

n.setup({
comment_italics = true,
})

local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles

Color.new('black', '#000000')
Group.new('CursorLine', colors.none, colors.none, styles.undercurl, colors.base1)
Group.new('CursorLineNr', colors.none, colors.none, styles.NONE, colors.base1)
Group.new('Visual', colors.none, colors.base01, styles.NONE)

local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

require("solarized-osaka").setup({
  transparent = true
})

Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

-- vim.cmd[["colorscheme catppuccin-frappe"]]
-- Default options:

vim.cmd[[let g:gruvbox_material_background = 'hard']]
-- setup must be called before loading
-- local colorscheme = "rose-pine"
-- local colorscheme = "darcula"
--vim.cmd("colorscheme zenwritten")
vim.cmd("colorscheme lake")
--vim.cmd("colorscheme zenwritten")
--vim.cmd("highlight ColorColumn guibg=#222222")
--vim.cmd("highlight CursorLine guibg=#222222")
--vim.cmd("highlight NvimTreeCursorLine guibg=#222222")
--vim.cmd("highlight NormalFloat guibg=#222222")
--vim.cmd("highlight PMenu guibg=#222222")
--vim.cmd("highlight PMenuSel guibg=#333333")

-- require 'colorizer'.setup()
-- Group.new('PMenu', colors.none, colors.none, styles.NONE, colors.base1)
-- vim.cmd("colorscheme no-clown-fiesta")

