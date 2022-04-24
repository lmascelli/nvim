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
keymap('n', '<leader>wo', '<cmd>split<cr>', {})

-- Buffer key

keymap('n', '<leader>bd', '<cmd>bd<cr>', {})
keymap('n', '<leader>bs', '<cmd>:w<cr>', {})
keymap('n', '<c-s>', '<cmd>:w<cr>', {})
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
keymap('n', '<leader>vr', '<cmd>call g:reload_vimrc()<cr>', {
  silent = true,
  nowait = true,
})
keymap('n', '<leader>qq', '<cmd>q<cr>', {})
keymap('n', '<leader>qQ', '<cmd>qa!<cr>', {})

local function plugins(plug_ok)
  if plug_ok then

    keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', {})

    -- ***********   CoC keymap   ***************
    --
    --    CoC-LSP
    --
    -- <space>gk -> Documentation
    keymap('n', '<leader>gk', 'CocActionAsync("doHover")', {
      silent = true,
      nowait = true,
      expr = true,
    })
    -- <space>gs --> Signature
    keymap('n', '<leader>gs', 'CocActionAsync("showSignatureHelp")', {
      silent = true,
      expr = true,
    })
    -- <c-x><c-o> --> Show completion
    keymap('i', '<c-x><c-o>', 'coc#refresh()', {
      silent = true,
      expr = true,
    })
    -- <space>gr --> Refactor
    keymap('n', '<leader>gr', '<Plug>(coc-rename)', {})
    -- <space>ge --> Definition
    keymap('n', '<leader>ge', '<Plug>(coc-definition)', {})
    -- <space>ge --> Diagnostics
    keymap('n', '<leader>gp', '<cmd>CocList diagnostics<cr>', {})
    -- <space>g. --> Fix
    keymap('n', '<leader>g.', '<cmd>CocFix<cr>', {})

    --
    --    CoC-Utility
    --
    -- <c-k> --> show Files (Ctrl+k)
    keymap('n', '<c-k>', '<cmd>Telescope find_files<cr>', {})
    -- <c-p> --> show Commands (Ctrl+p)
    keymap('n', '<c-p>', '<cmd>CocList vimcommands<cr>', {
      silent = true,
      nowait = true,
    })

  end
end

return { plugins = plugins }
