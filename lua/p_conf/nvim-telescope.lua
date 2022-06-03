local packer = require 'packer'

local install = function()
		packer.use {
			'nvim-telescope/telescope.nvim',
			requires = { { 'nvim-lua/plenary.nvim' } }
		}
end

local config = function()

end

return {
  install = install,
  config = config,
}
