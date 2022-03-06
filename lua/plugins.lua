-- CHECK PACKER INSTALLATION

local config_dir = ""
local packer_dir = ""

local win = vim.loop.os_uname().version:match 'Windows'
function check_packer()
  local linux = os.getenv("TERM")
  if win ~= nil then
    local win_dir = os.getenv("XDG_CONFIG_HOME")
    config_dir = win_dir .. "nvim/"
    packer_dir = win_dir .. "nvim-data\\site\\pack\\packer\\start\\"
    else
    config_dir = os.getenv("HOME") .. "/.config/nvim"
    packer_dir = os.getenv("HOME") .. "/.local/share/nvim/site/pack/packer/start/"
  end
  if vim.fn.isdirectory(packer_dir .. 'packer.nvim') == 1 then
    return true
  else
    return false
  end
end

local packer_ok = check_packer()

local can_setup = false

function setup(config)

-- CHECK PACKER DOWNLOADED --
if (packer_ok ~= true) then
  os.execute('git clone https://github.com/wbthomason/packer.nvim ' .. 
             packer_dir .. 'packer.nvim')
else
  -- INSTALL PACKER --
  -- DOWNLOAD PLUGINS --
  require 'packer'.startup( function()
    use 'wbthomason/packer.nvim'
    use {'neovim/nvim-lspconfig'}
    use {'neoclide/coc.nvim', branch = 'release'}
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
      can_setup = true
    end
  end
end

        -- bufferline --
    require 'bufferline_config'
  
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
  setup = setup
}
