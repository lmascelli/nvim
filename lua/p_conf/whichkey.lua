local packer = require 'packer'

local install = function()
  packer.use {
  "folke/which-key.nvim",
}
end

local config = function()
  require 'which-key'.setup {
    window = {
      border = "double",
    },
  }
  vim.g.whichkey = true
  vim.opt.timeoutlen = 500
end

return {
  install = install,
  config = config,
}
