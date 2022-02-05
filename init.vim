lua << EOF
if require 'install' then
  require 'plugins'
  vim.cmd ':PackerInstall'
  require 'basic'
  require 'keybinding'
else
  print 'Packer Installation needed'
  print 'If correctly installed restart nvim'
end
EOF
