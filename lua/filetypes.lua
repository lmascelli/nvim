-- NASM FILETYPE --
vim.cmd 'au BufNewFile,BufRead *.nasm   setf nasm'
local comment_macro = "o;---------------------------------\n;\n;---------------------------------ka "
vim.fn.setreg('c', comment_macro)
