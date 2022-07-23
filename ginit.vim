lua << EOF
if vim.fn.exists(':GuiFont') then
-- increase decrease font size
  if (vim.g.font_size == nil) then
    vim.g.font_size = 10
  end

  vim.g.update_font = function()
    if vim.g.font_name ~= nil then
      vim.cmd (':Guifont! ' .. vim.g.font_name .. ':h' .. tostring(vim.g.font_size))
    else
      print (vim.g.font_name)
      print 'vim.g.font_name not provided'
    end
  end

  local update_font = vim.g.update_font

  vim.g.increase_font = function()
    vim.g.font_size = vim.g.font_size + 1
    update_font()
  end

  vim.g.decrease_font = function()
    vim.g.font_size = vim.g.font_size - 1
    update_font()
  end
  update_font()
  end

if vim.fn.exists(':GuiScrollBar') then
  vim.cmd ':GuiScrollBar 0'
end

if vim.fn.exists(':GuiPopupmenu') then
  vim.cmd ':GuiPopupmenu 1'
end

if vim.fn.exists(':GuiTabline') then
  vim.cmd ':GuiTabline 0'
end
EOF
