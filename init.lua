require 'basic'

local config = {
  completion = {
    coc_enabled = true,
    lsp_enabled = true
  }
}
require 'filetypes'

if not vim.g.vscode then
  local plugins = require 'plugins'
  plugins.setup(config)
  require 'keybinding'.plugins(plugins.packer_ok)
else
end