local keymap = vim.api.nvim_set_keymap


-- BASIC KEYBINDINGS --

-- Leader key --
vim.g.mapleader = ' '

-- Window key

keymap('n', '<leader>wh', '<c-w>h', {})
keymap('n', '<leader>wl', '<c-w>l', {})
keymap('n', '<leader>wj', '<c-w>j', {})
keymap('n', '<leader>wk', '<c-w>k', {})
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


-- Utility keybindings

keymap('n', '<leader>vl', '<cmd>source %<cr>', {})
keymap('n', '<leader>qq', '<cmd>q<cr>', {})
keymap('n', '<leader>qQ', '<cmd>qa!<cr>', {})

local function plugins(plug_ok)
  if plug_ok then
    keymap('n', '<leader>e', '<cmd>CocCommand explorer<cr>', {})
  end
end

return {plugins = plugins}
