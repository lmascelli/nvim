lua << EOF
require 'install'
require 'plugins'
vim.cmd ':PackerInstall'
require 'basic'
require 'keybinding'
EOF
