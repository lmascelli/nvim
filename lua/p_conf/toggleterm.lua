local packer = require 'packer'

local install = function()
    packer.use 'akinsho/toggleterm.nvim'
end

local config = function()
    local shell = 'pwsh'
    require 'toggleterm'.setup {
       open_mapping = [[<c-ò>]],
       direction = 'float',
       float_opts = { border = 'curved' },
       shell = shell,
    }
end

return {
  install = install,
  config = config,
}
