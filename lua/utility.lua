-------------------   GLOBAL FUNCTIONS   ----------------------


-- reload vimrc
vim.g.reload_vimrc = function()
  vim.cmd ':so $MYVIMRC'
end


-- exec PROJECT.PS1 script
vim.g.project_ps1 = function()
  if (vim.fn.findfile('project.ps1') == 'project.ps1') then
    local action = vim.fn.input('arguments: ')
    local cmd = 'pwsh -Command ./project.ps1 ' .. action
    vim.cmd (':terminal ' .. cmd)
 else
    print 'project.ps1 script not found'
  end
end

-- exec PROJECT.PS1 script
vim.g.project_lua = function()
  if (vim.fn.findfile('project.lua') == 'project.lua') then
    local action = vim.fn.input('arguments: ')
    print ' '
    vim.cmd ':source project.lua'
  else
    print 'project.ps1 script not found'
  end
end

return {}
