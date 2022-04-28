if loaded_modules == nil then
  loaded_modules = {}
else
  print 'Reload init.lua'
  for k, _ in pairs(package.loaded) do
    for _, m in pairs(loaded_modules) do
      if string.match(k, m) then
        package.loaded[k] = nil
      end
    end
  end
end

local function load_module(mod)
  table.insert(loaded_modules, mod)
  return require(mod)
end

local config = {
  completion = {
    coc_enabled = true,
    lsp_enabled = true
  }
}

if not vim.g.vscode then
  local plugins = load_module('plugins')
  plugins.setup(config)
  load_module('keybinding').plugins(plugins.packer_ok)
else
end

load_module('basic')
load_module('utility')
load_module('filetypes')
