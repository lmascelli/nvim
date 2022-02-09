return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'morhetz/gruvbox'
  use 'voldikss/vim-floaterm'
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
    end
  }
  end
)
