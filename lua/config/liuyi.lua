local config = {
  vim = {
    opt = {
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
      cinoptions        = "g0",
    },
    g = {
      mkdp_auto_start   = 1,
      background        = "dark",
    },
  },
  mappings = {
    -- nvim-tree
    ["t<C-O>"] = {
      "n",
      ":NvimTreeOpen<CR>",
      { silent = true }
    },
    ["t<C-R>"] = {
      "n",
      ":NvimTreeCollapseKeepBuffers<CR>",
      { silent = true }
    },
    ["t<C-F>"] = {
      "n",
      ":NvimTreeFocus<CR>",
      { silent = true }
    },
    ["t<C-T>"] = {
      "n",
      ":NvimTreeToggle<CR>",
      { silent = true }
    },
    -- WinShift
    ["<C-W>M"] = {
      "n",
      "<Cmd>WinShift<CR>",
      { silent = true }
    },
  },
  ui = {
    theme = "gruvbox",
  },
  lsp = {
    clangd = {
    }
  },
}

return config

