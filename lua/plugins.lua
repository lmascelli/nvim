-- CHECK PACKER INSTALLATION

local packer_dir = ""

function check_packer()
  local win = os.getenv("XDG_CONFIG_HOME")
  if win ~= nil then
    packer_dir = win .. "nvim-data\\site\\pack\\packer\\start\\"
  else
    packer_dir = os.getenv("HOME") .. ".local/share/nvim/site/pack/packer/start/"
  end
  if vim.fn.isdirectory(packer_dir .. 'packer.nvim') == 1 then
    return true
  else
    return false
  end
end

if (check_packer() ~= true) then
  os.execute('git clone https://github.com/wbthomason/packer.nvim ' .. 
             packer_dir .. 'packer.nvim')
else
  require 'packer'.startup( function()
    use 'wbthomason/packer.nvim'
  end
  )
  vim.cmd ':PackerInstall'
end
