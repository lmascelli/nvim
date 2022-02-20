return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'morhetz/gruvbox'
  use 'voldikss/vim-floaterm'
  end
)
