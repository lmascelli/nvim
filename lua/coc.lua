return
{
  coc_complete_C_Space = function()
    vim.cmd (
'inoremap <silent><expr> <c-space> coc#refresh()'
    )
  end,

  coc_show_documentation_K = function()
    vim.cmd (
-- Use K to show documentation in preview window.
[[

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction    
nnoremap <silent> K :call <SID>show_documentation()<CR>
]]
    )
  end
}
