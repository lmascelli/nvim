print 'My NeoVIM configuration'

local set = vim.opt

set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2
set.expandtab = true

vim.wo.wrap = false

set.hidden = true

set.backup = false
set.writebackup = false

set.cmdheight = 2

set.mouse = 'a'

set.updatetime = 300

set.number = true
set.relativenumber = true

set.signcolumn = 'number'

local color = 'gruvbox'

set.guifont = 'JetBrains Mono:h9'
vim.cmd (':colorscheme ' .. color)

