-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Shade.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.configs.shade\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Shade.nvim",
    url = "https://github.com/sunjon/Shade.nvim"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.configs.aerial\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["asyncrun.vim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18expanded.code\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["cmp-buffer"] = {
    after = { "cmp-vsnip" },
    after_files = { "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer\\after\\plugin\\cmp_buffer.lua" },
    load_after = {
      ["cmp-path"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after = { "cmp-path" },
    after_files = { "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline\\after\\plugin\\cmp_cmdline.lua" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    after = { "cmp-cmdline" },
    after_files = { "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp\\after\\plugin\\cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    after = { "cmp-buffer" },
    after_files = { "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path\\after\\plugin\\cmp_path.lua" },
    load_after = {
      ["cmp-cmdline"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    after = { "vim-vsnip" },
    after_files = { "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-vsnip\\after\\plugin\\cmp_vsnip.vim" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  firenvim = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  ["friendly-snippets"] = {
    after = { "lspkind-nvim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  gruvbox = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.blankline\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    after = { "nvim-cmp" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lsp" },
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.configs.nvim-cmp\frequire\0" },
    load_after = {
      ["lspkind-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cursorline"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.cursorline\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.lspconfig\frequire\0" },
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFile", "NvimTreeCollapse", "NvimTreeCollapseKeepBuffers", "NvimTreeOpen" },
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29expanded.nvim-treesitter\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["cmp-vsnip"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["winshift.nvim"] = {
    commands = { "WinShift" },
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.configs.winshift\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Administrator\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cmp_nvim_lsp"] = "friendly-snippets"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.configs.aerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: Shade.nvim
time([[Config for Shade.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.configs.shade\frequire\0", "config", "Shade.nvim")
time([[Config for Shade.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-cursorline
time([[Config for nvim-cursorline]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.cursorline\frequire\0", "config", "nvim-cursorline")
time([[Config for nvim-cursorline]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeCollapse lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeCollapse", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeCollapseKeepBuffers lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeCollapseKeepBuffers", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file WinShift lua require("packer.load")({'winshift.nvim'}, { cmd = "WinShift", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'asyncrun.vim', 'nvim-treesitter'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'asyncrun.vim', 'nvim-treesitter'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'asyncrun.vim', 'nvim-treesitter'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'asyncrun.vim', 'nvim-treesitter'}, { ft = "lua" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
