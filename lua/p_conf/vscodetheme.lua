local packer = require 'packer'

local install = function()
        
  packer.use 'Mofiqul/vscode.nvim'
end

local config = function()
  vim.cmd ':colorscheme vscode'
end

return {
  install = install,
  config = config,
}
