vim.g.term_shown = false

function toggle_term(hight)
  hight = hight or 10
  if vim.g.term_shown then
    vim.cmd ':close'
    vim.g.term_shown = false
  else
    vim.opt.splitbelow = true
    vim.cmd (':'.. hight .. 'split splitbelow')
    vim.cmd ':term'
    vim.g.term_shown = true
  end
end

return {
  toggle_term = toggle_term
}
