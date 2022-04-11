vim.g.coc_global_extensions = 
  {
    'coc-json',
    'coc-lua',
    'coc-pyright',
    'coc-pairs',
    'coc-cmake',
    'coc-clangd'
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
