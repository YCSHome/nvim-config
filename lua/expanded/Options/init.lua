local OptOptions = {
  number            = true,
  expandtab         = true,
  smartindent       = true,
  autoindent        = true,
  undofile          = true,
  wrap              = false,
  cul               = true,
  number            = true,
  tabstop           = 2,
  mouse             = "a",
  undofile          = true,
  shiftwidth        = 2,
  termguicolors     = true,
  backup            = false,
  relativenumber    = true,
  hlsearch          = false,
  backup            = false,
}

local GlobalOptions = {
  mkdp_auto_start   = 1,
  background        = "dark",
}

for key, value in pairs(OptOptions) do
	vim.opt[key] = value
end

for key, value in pairs(GlobalOptions) do
	vim.g[key]   = value
end

vim.api.nvim_command("set cinoptions+=g0")

