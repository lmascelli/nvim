lua << EOF
local packer_found, config_dir  = unpack(require 'install')
if packer_found then
  require 'plugins'
  vim.cmd ':PackerInstall'
  local install_check = ':e '..config_dir .. '/install_check\n:w'
  if vim.fn.filereadable(config_dir .. '/install_check') ~= 0 then
    require 'basic'
    require 'keybinding'
    require 'nvui'
    require 'mylspconfig'
  else
    vim.cmd(install_check)
  end
else
  print 'Packer Installation needed'
  print 'If correctly installed restart nvim'
end
EOF
