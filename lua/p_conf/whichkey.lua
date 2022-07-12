local packer = require 'packer'

local install = function()
  packer.use {
  "folke/which-key.nvim",
}
end

local config = function()
  require 'which-key'.setup {}
  vim.opt.timeoutlen = 500
end

return {
  install = install,
  config = config,
}
