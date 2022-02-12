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

local M = {
}

M.LoadOptions = function()
  for key, value in pairs(OptOptions) do
    vim.opt[key] = value
  end
  for key, value in pairs(GlobalOptions) do
    vim.g[key]   = value
  end
end

vim.cmd([[set cinoptions+=g0]])

return M
