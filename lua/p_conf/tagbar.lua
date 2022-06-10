local packer = require 'packer'

local install = function()
  packer.use "preservim/tagbar"
end

local config = function()
  vim.api.nvim_set_keymap('n', '<f8>', '<cmd>TagbarToggle<cr>', {})
end

return {
  install = install,
  config = config,
}
