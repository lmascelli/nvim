local packer = require 'packer'

local install = function()
  packer.use 'kyazdani42/nvim-tree.lua'
end

local config = function()
  vim.api.nvim_set_keymap('n', '<leader>et', '<cmd>NvimTreeToggle<cr>', {})
  vim.api.nvim_set_keymap('n', '<leader>ef', '<cmd>NvimTreeFocus<cr>', {})
  require 'nvim-tree'.setup {}
end

return {
  install = install,
  config = config,
}
