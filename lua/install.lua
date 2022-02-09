-- Creating local variables but maybe consider make them global

local os_type = nil
local home_path = vim.env.XDG_CONFIG_HOME

-- Packer variable
local packer_path = nil
local config_path = nil
local packer_found = false

if home_path == nil then
  home_path = vim.env.HOME
  config_path = home_path .. '/.config/nvim'
  os_type = 'Linux'
  packer_path = home_path .. '/.local/share/nvim/site/pack/packer/start/packer.nvim'
else
  os_type = 'Windows'
  config_path = home_path ..'/nvim'
  packer_path = home_path .. '/nvim-data/site/pack/packer/start/packer.nvim'
end

local function install_packer()
  print 'Trying install packer...'
  os.execute('git clone --depth 1 https://www.github.com/wbthomason/packer.nvim '
     .. packer_path)
  local packer_check = ':e ' .. config_path .. '/packer_installed\n' .. ':w'
  vim.cmd(packer_check)
end

if vim.fn.filereadable(config_path .. 'packer_installed') then
  if vim.fn.isdirectory(packer_path) ~= 0 then
    packer_found = true
  else
    install_packer()
  end
else
  install_packer()
end

local function recap()
  print('OS: ' .. os_type)
  print('nvim path: ' .. home_path)
  print('packer found: ' .. (packer_found and 'True' or 'False'))
  print('packer_path: ' .. packer_path)
end

-- recap()

return {packer_found, config_path}
