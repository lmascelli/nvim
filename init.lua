require 'basic'
local packer_ok = require 'plugins'.setup 
require 'filetypes'
require 'keybinding'

config = {
  completion = {
    coc_enabled = true,
    lsp_enabled = true
  }
}

vim.cmd "au VimEnter * silent lua require 'post'.post(config)"
