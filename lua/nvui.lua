if vim.fn.exists(':NvuiOpacity') ~=0 then
  vim.cmd ':NvuiOpacity 0.9'
  vim.cmd ':NvuiFrameless 1'
  vim.cmd ':colorscheme gruvbox'
  vim.opt.guifont = 'JetBrains Mono:h9'
end