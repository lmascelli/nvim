-------------------   GLOBAL FUNCTIONS   ----------------------
--
--
-- reload vimrc
vim.g.reload_vimrc = function()
  print 'AAA'
  vim.cmd ':so $MYVIMRC'
end

return {}
