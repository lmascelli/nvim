if exists(':GuiTabline')
  :GuiTabline 0
endif

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
EOF
if exists(':GuiScrollBar')
  :GuiScrollBar 0
endif
if exists(':GuiPopupmenu')
  :GuiPopupmenu 1
endif
