local packer = require 'packer'

local install = function()
  packer.use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-symbols.nvim' },
    }
  }
end

local config = function()

  local keymap = vim.api.nvim_set_keymap -- <c-k> --> show Files (Ctrl+k)
  keymap('n', '<c-k>', '<cmd>Telescope find_files<cr>', {})
  -- <c-p> --> show Commands (Ctrl+p)
  keymap('n', '<c-p>', '<cmd>Telescope commands<cr>', {
    silent = true,
    nowait = true,
  })
  keymap('n', '<leader>ts', '<cmd>Telescope<cr>', {})
  keymap('n', '<leader>tg', '<cmd>Telescope live_grep<cr>', {})
end

return {
  install = install,
  config = config,
}
