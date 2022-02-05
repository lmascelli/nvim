print 'My NeoVIM configuration'

local set = vim.opt

set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2
set.expandtab = true
vim.wo.wrap = false

set.mouse = 'a'

local color = 'gruvbox'

if vim.fn.has('GuiFont') ~= 0 then
    set.guifont = 'JetBrains Mono:h9'
    vim.cmd (':colorscheme ' .. color)
end

