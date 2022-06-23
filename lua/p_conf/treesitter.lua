local packer = require 'packer'

local install = function()
  packer.use {
    'nvim-treesitter/nvim-treesitter',
  }
end

local config = function()
  require 'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = false
    }
  }
  local keymap = vim.api.nvim_set_keymap -- <c-k> --> show Files (Ctrl+k)
  keymap('n', '<c-k>', '<cmd>Telescope find_files<cr>', {})
  -- <c-p> --> show Commands (Ctrl+p)
  keymap('n', '<c-p>', '<cmd>Telescope commands<cr>', {
    silent = true,
    nowait = true,
  })

end

return {
  install = install,
  config = config,
}
