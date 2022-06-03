local packer = require 'packer'

local install = function()
    packer.use 'kyazdani42/nvim-tree.lua'
end

local config = function()
    require 'nvim-tree'.setup {}
end

return {
  install = install,
  config = config,
}
