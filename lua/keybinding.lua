local keymap = vim.api.nvim_set_keymap


-- Leader key --
vim.g.mapleader = ' '

-- Window key

keymap('n', '<leader>h', '<c-w>h', {})
keymap('n', '<leader>l', '<c-w>l', {})
keymap('n', '<leader>j', '<c-w>j', {})
keymap('n', '<leader>k', '<c-w>k', {})

-- CocExplorer
keymap('n', '<leader>e', '<Cmd>CocCommand explorer<cr>', {noremap = true})

-- Terminal
keymap('n', '<leader>t', '<cmd>FloatermToggle<cr>', {})
keymap('t', '<esc>', '<cmd>FloatermToggle<cr>', {})


-- Utility keybindings

keymap('n', '<leader>vl', '<cmd>source %<cr>', {})
keymap('n', '<leader>qq', '<cmd>q<cr>', {})
keymap('n', '<leader>qQ', '<cmd>qa!<cr>', {})
