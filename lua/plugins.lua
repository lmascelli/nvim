-- PLUGINS LIST

local plugins = {
  'lsp',
  'bufferline',
  'treesitter',
  'tabout',
  'toggleterm',
  'nvim-tree',
  'lualine',
  'nvim-telescope',
}


-- CHECK PACKER INSTALLATION
local config_dir = ""
local packer_dir = ""

function check_packer()
    if vim.g.win ~= nil then
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

-- CHECK PACKER DOWNLOADED --
if (packer_ok ~= true) then
    os.execute('git clone https://github.com/wbthomason/packer.nvim ' ..
        packer_dir .. 'packer.nvim')
else
    -- INSTALL PACKER --
    -- DOWNLOAD PLUGINS --
    require 'packer'.startup(function()
        use 'wbthomason/packer.nvim'

        for _, p in pairs(plugins) do
            require('p_conf.' .. p).install()
        end

        use { 'windwp/nvim-autopairs',
              config = function()
                  local npairs = require 'nvim-autopairs'
                  npairs.setup {
        map_cr = true
                  }
              end
        }
    end
    )

    local packer_installed = config_dir .. 'packer_installed'
    if vim.fn.filereadable(packer_installed) == 0 then
        os.execute('echo "" >> ' .. packer_installed)
    else
        vim.cmd ':PackerInstall'
        local plugins_downloaded = config_dir .. 'plugin_downloaded'
        if vim.fn.filereadable(plugins_downloaded) == 0 then
            os.execute('echo "" >> ' .. plugins_downloaded)
        else
            local plugins_downloaded = config_dir .. 'plugin_downloaded'
            if vim.fn.filereadable(plugins_downloaded) == 0 then
                os.execute('echo "" >> ' .. plugins_downloaded)
            else
                can_setup = true
            end
        end
    end
end

local setup = function(config)
    if can_setup then
        for _, p in pairs(plugins) do
            require('p_conf.' .. p).config()
        end
    end
end

return { packer_ok = packer_ok, setup = setup }
