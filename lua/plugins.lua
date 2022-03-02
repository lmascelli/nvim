-- CHECK PACKER INSTALLATION

local config_dir = ""
local packer_dir = ""

function check_packer()
  local linux = os.getenv("TERM")
  if linux ~= nil then
    config_dir = os.getenv("HOME") .. "/.config/nvim"
    packer_dir = os.getenv("HOME") .. "/.local/share/nvim/site/pack/packer/start/"
    else
    local win = os.getenv("XDG_CONFIG_HOME")
    config_dir = win .. "nvim/"
    packer_dir = win .. "nvim-data\\site\\pack\\packer\\start\\"
  end
  if vim.fn.isdirectory(packer_dir .. 'packer.nvim') == 1 then
    return true
  else
    return false
  end
end

local packer_ok = check_packer()

-- CHECK PACKER DOWNLOADED --
if (packer_ok ~= true) then
  os.execute('git clone https://github.com/wbthomason/packer.nvim ' .. 
             packer_dir .. 'packer.nvim')
else
  -- INSTALL PACKER --
  -- DOWNLOAD PLUGINS --
  require 'packer'.startup( function()
    use 'wbthomason/packer.nvim'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use 'akinsho/toggleterm.nvim'
  end
  )
  vim.cmd ':PackerInstall'

  local packer_installed = config_dir .. 'packer_installed'
  if vim.fn.filereadable(packer_installed) == 0 then
    os.execute('echo "" >> ' .. packer_installed)
  else
    local plugins_downloaded = config_dir .. 'plugin_downloaded'
    if vim.fn.filereadable(plugins_downloaded) == 0 then
      os.execute('echo "" >> ' .. plugins_downloaded) 
    else

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
  end
end

return {
  packer_ok = packer_ok,
}
