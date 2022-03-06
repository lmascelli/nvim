function post(config)
  if config.coc_enabled ~= true then 
    vim.cmd 'CocDisable'
  end
end

return {
  post = post
}
