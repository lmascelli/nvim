-- CHECK PACKER INSTALLATION

local config_dir = ""
local packer_dir = ""

function check_packer()
  local win = os.getenv("XDG_CONFIG_HOME")
  if win ~= nil then
    config_dir = win .. "nvim/"
    packer_dir = win .. "nvim-data\\site\\pack\\packer\\start\\"
  else
    config_dir = os.getenv("HOME") .. ".config/nvim"
    packer_dir = os.getenv("HOME") .. ".local/share/nvim/site/pack/packer/start/"
  end
  if vim.fn.isdirectory(packer_dir .. 'packer.nvim') == 1 then
    return true
  else
    return false
  end
end

local packer_ok = check_packer()

if (packer_ok ~= true) then
  os.execute('git clone https://github.com/wbthomason/packer.nvim ' .. 
             packer_dir .. 'packer.nvim')
else
  -- INSTALL PLUGINS --
  require 'packer'.startup( function()
    use 'wbthomason/packer.nvim'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use 'akinsho/toggleterm.nvim'
  end
  )
  vim.cmd ':PackerInstall'

  local plugins_downloaded = config_dir .. 'plugin_downloaded'
  if vim.fn.filereadable(plugin_downloaded) == 0 then
    vim.cmd ([[:e ]] .. plugins_downloaded .. [[
    :w
    :bd]])
  else
  end

  -- CONFIG PLUGINS --
  -- bufferline --
  vim.opt.termguicolors = true
  require 'bufferline'.setup{}

  -- toggleterm --
  require 'toggleterm'.setup{
    open_mapping = [[<c-\>]],
    direction = 'float',
    float_opts = {
      border = 'curved'
    }
  }
end


return {
  packer_ok = packer_ok,
}
