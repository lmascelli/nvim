lua << EOF
local var packer_installed = require 'install'
print(packer_installed)
if packer_installed then
  require 'plugins'
  vim.cmd ':PackerInstall'
  require 'basic'
  require 'keybinding'
else
  print 'Packer Installation needed'
  print 'If correctly installed restart nvim'
end
EOF
