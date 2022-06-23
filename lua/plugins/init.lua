local plugins = {
  ["wbthomason/packer.nvim"] = { },-- 插件管理器
  ["morhetz/gruvbox"] = { },       -- 主题
  ["skywind3000/asyncrun.vim"] = {
    ft = {"cpp", "c", "lua", "python"},
    config = function()
      require("expanded.code")
    end
  },                               -- 异步编译插件
  ["nvim-treesitter/nvim-treesitter"] = {
    run = ":TSUpdate",
    config = function() 
      require("expanded.nvim-treesitter")
    end,
    ft = {"cpp", "lua", "c", "python", "sh"},
  },                               -- 高亮着色

  ['neovim/nvim-lspconfig'] = {
    config = function()
      require("plugins.configs.lspconfig")
    end
  },                               -- Lsp 服务器

  ['rafamadriz/friendly-snippets'] = {
     event = "InsertEnter",
     module = "cmp_nvim_lsp",
  },
  ['onsails/lspkind-nvim'] = {
    after = "friendly-snippets",
  },
  ['hrsh7th/nvim-cmp'] = {
    after = "lspkind-nvim",
    config = function()
      require("plugins.configs.nvim-cmp")
    end
  },

  ['hrsh7th/cmp-nvim-lsp'] = {
    after = "nvim-cmp",
  },

  ['hrsh7th/cmp-cmdline'] = {
    after = "cmp-nvim-lsp",
  },

  ['hrsh7th/cmp-path'] = {
    after = "cmp-cmdline",
  },

  ['hrsh7th/cmp-buffer'] = {
    after = "cmp-path",
  },

  ['hrsh7th/cmp-vsnip'] = {
    after = "cmp-buffer",
  },

  ['hrsh7th/vim-vsnip'] = {
    after = "cmp-vsnip",
  },
}

vim.api.nvim_command("packadd packer.nvim")

require("core.packer").run(plugins)
