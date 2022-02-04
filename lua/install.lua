print 'Verifying config installation'

-- Creating local variables but maybe consider make them global

local os_type = nil

local config_path = vim.env.XDG_CONFIG_HOME
local packer_path = nil

if config_path == nil then
  config_path = vim.env.HOME
  os_type = 'Linux'
  packer_path = '~/.local/share/nvim/site/pack/'
else
  os_type = 'Windows'
  packer_path = config_path .. '/nvim-data/site/pack/'
end

local function install_packer()
  os.execute('git clone --depth 1 https://www.github.com/wbthomason/packer.nvim '
     .. packer_path .. 'packer/start/packer.nvim')
end

print('' .. vim.fn.isdirectory(packer_path .. 'packer.nvim'))
if vim.fn.isdirectory(packer_path .. 'packer.nvim') ~= '0' then
  print 'Packer is installed'
else
  print 'Packer is not installed'
  install_packer()
end

if os_type == 'Linux' then
  print 'Linux Config'
elseif os_type == 'Windows' then
  print 'Windows Config'
else
  print 'Error in detecting OS type'
end

local function recap()
  print('OS: ' .. os_type)
  print('nvim path: ' .. config_path)
  print('packer_path: ' .. packer_path)
end

recap()
