require 'basic'

local config = {
  completion = {
    coc_enabled = true,
    lsp_enabled = true
  }
}

local plugins = require 'plugins'
plugins.setup(config)
require 'filetypes'
require 'keybinding'.plugins(plugins.packer_ok)

