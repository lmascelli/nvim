vim.cmd 'highlight CocFloating ctermbg=16'
vim.cmd 'highlight CocFloating ctermfg=White'
vim.cmd 'highlight CocErrorFloat ctermbg=1 ctermfg=3'

vim.g.coc_global_extensions = {
  'coc-json',
  'coc-lua',
  'coc-pyright',
  'coc-pairs',
  'coc-cmake',
  'coc-clangd',
  'coc-sumneko-lua',
  'coc-powershell',
}

vim.g.show_documentation = function()
  vim.cmd [[
  if (index(['vim','help'], &filetype) >= 0)
  execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
  call CocActionAsync('doHover')
  else
  execute '!' . &keywordprg . " " . expand('<cword>')
  endif
  ]]
end

return {
}
