local plugins = {
  ["wbthomason/packer.nvim"] = { },-- 插件管理器
  ["morhetz/gruvbox"] = { },       -- 主题
  ["joshdick/onedark.vim"] = { },
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

  -- markdown 预览
  ["iamcco/markdown-preview.nvim"] = {
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- 一个管理窗口的插件，非常好用
  ["akinsho/toggleterm.nvim"] = {
  },

  -- 突出显示光标下的单词
  ["yamatsum/nvim-cursorline"] = {
    config = function()
      require("plugins.configs.cursorline");
    end
  },

  -- 让你的缩进线花里胡哨
  ["lukas-reineke/indent-blankline.nvim"] = {
    config = function()
      require("plugins.configs.blankline")
    end
  },

  -- 将你可爱的nvim集成到chrome里面去
  ["glacambre/firenvim"] = {
    opt = false,
    run = function() 
      vim.fn['firenvim#install'](0) 
    end
  },

  -- 有点用但好像又没用的目录树
  ["kyazdani42/nvim-tree.lua"] = {
    cmd = {
      "NvimTreeToggle",
      "NvimTreeFocus",
      "NvimTreeFindFile",
      "NvimTreeCollapse",
      "NvimTreeCollapseKeepBuffers",
      "NvimTreeOpen",
    },
    config = function()
      require("plugins.configs.nvim-tree")
    end
  },

  -- 更好的窗口切换管理
  ["sindrets/winshift.nvim"] = {
    cmd = "WinShift",
    config = function()
      require("plugins.configs.winshift");
    end
  },

  -- 窗口高亮
  ["sunjon/Shade.nvim"] = {
    config = function()
      require("plugins.configs.shade")
    end
  },

  -- 大纲显示
  ["stevearc/aerial.nvim"] = {
    config = function()
      require("plugins.configs.aerial")
    end
  },
}

vim.api.nvim_command("packadd packer.nvim")

require("core.packer").run(plugins)
