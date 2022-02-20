local keymap = vim.api.nvim_set_keymap


-- Leader key --
vim.g.mapleader = ' '

-- Window key

keymap('n', '<leader>h', '<c-w>h', {})
keymap('n', '<leader>l', '<c-w>l', {})
keymap('n', '<leader>j', '<c-w>j', {})
keymap('n', '<leader>k', '<c-w>k', {})
keymap('n', '<leader>wv', '<cmd>vsplit<cr>', {})
keymap('n', '<leader>wh', '<cmd>split<cr>', {})

-- Buffer key

keymap('n', '<leader>bd', '<cmd>bd<cr>', {})
keymap('n', '<leader>bs', '<cmd>:w<cr>', {})
keymap('n', '<leader>bl', '<cmd>buffers<cr>', {})
keymap('n', '<leader>b1', '<cmd>b1<cr>', {})
keymap('n', '<leader>b2', '<cmd>b2<cr>', {})
keymap('n', '<leader>b3', '<cmd>b3<cr>', {})
keymap('n', '<leader>b4', '<cmd>b4<cr>', {})
keymap('n', '<leader>b5', '<cmd>b5<cr>', {})
keymap('n', '<leader>b6', '<cmd>b6<cr>', {})
keymap('n', '<leader>b7', '<cmd>b7<cr>', {})
keymap('n', '<leader>b8', '<cmd>b8<cr>', {})
keymap('n', '<leader>b9', '<cmd>b9<cr>', {})

-- Coc-Nvim
local coc = require('coc')
keymap('n', '<c-space>', 'coc#refresh()', {silent=true, expr=true})
keymap('n', '[g', '<Plug>(coc-diagnostic-prev)', {silent=true})
keymap('n', ']g', '<Plug>(coc-diagnostic-next)', {silent=true})
keymap('n', 'gd', '<Plug>(coc-definition)', {silent=true})
keymap('n', 'gy', '<Plug>(coc-type-definition)', {silent=true})
keymap('n', 'gi', '<Plug>(coc-implementation)', {silent=true})
keymap('n', 'gr', '<Plug>(coc-references)', {silent=true})
coc.coc_complete_C_Space()

-- CocExplorer
keymap('n', '<leader>e', '<Cmd>CocCommand explorer<cr>', {noremap = true})

-- Terminal
keymap('n', '<leader>t', '<cmd>FloatermToggle<cr>', {})
keymap('t', '<esc>', '<cmd>FloatermToggle<cr>', {})


-- Utility keybindings

keymap('n', '<leader>vl', '<cmd>source %<cr>', {})
keymap('n', '<leader>qq', '<cmd>q<cr>', {})
keymap('n', '<leader>qQ', '<cmd>qa!<cr>', {})
