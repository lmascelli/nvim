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

set.cmdheight = 1

set.mouse = 'a'

set.updatetime = 300

set.number = true
set.relativenumber = false

set.signcolumn = 'number'
set.termguicolors = true

vim.cmd 'au TermOpen * setlocal nonumber'

set.shell = 'pwsh'

vim.cmd ':colorscheme default'
vim.cmd 'highlight CocFloating ctermbg=Black guibg=Black'
vim.cmd 'highlight CocFloating ctermfg=White guifg=White'
vim.cmd 'highlight PMenu ctermbg=Black guibg=Black'
vim.cmd 'highlight PMenu ctermfg=White guifg=White'
