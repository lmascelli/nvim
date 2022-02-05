-- Creating local variables but maybe consider make them global

local os_type = nil
local config_path = vim.env.XDG_CONFIG_HOME

-- Packer variable
local packer_path = nil
local packer_found = false

if config_path == nil then
  config_path = vim.env.HOME
  os_type = 'Linux'
  packer_path = config_path .. '/.local/share/nvim/site/pack/packer/start/packer.nvim'
else
  os_type = 'Windows'
  packer_path = config_path .. '/nvim-data/site/pack/packer/start/packer.nvim'
end

local function install_packer()
  print 'Trying install packer...'
  os.execute('git clone --depth 1 https://www.github.com/wbthomason/packer.nvim '
     .. packer_path)
end

if vim.fn.isdirectory(packer_path) ~= 0 then
  packer_found = true
else
  install_packer()
end

local function recap()
  print('OS: ' .. os_type)
  print('nvim path: ' .. config_path)
  print('packer found: ' .. (packer_found and 'True' or 'False'))
  print('packer_path: ' .. packer_path)
end

-- recap()

return packer_found
