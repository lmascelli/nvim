-------------------   GLOBAL FUNCTIONS   ----------------------
--
--
-- reload vimrc
vim.g.reload_vimrc = function()
  vim.cmd ':so $MYVIMRC'
end

return {}
