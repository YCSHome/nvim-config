vim.api.nvim_command("packadd packer.nvim")

local packer = require("packer")

packer.startup(function(use)
  use { "wbthomason/packer.nvim" }
  use { "morhetz/gruvbox" }
  use { "folke/tokyonight.nvim" }
  use { "EdenEast/nightfox.nvim" }
  use { "joshdick/onedark.vim" }
  -- use { "skywind3000/asyncrun.vim" }

  use {
    "skywind3000/asyncrun.vim",
    ft = {"cpp", "c", "lua", "python"},
    config = function()
      require("expanded.code")
    end
  }                               -- 异步编译插件

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function() 
      require("plugins.config.nvim-treesitter")
    end,
    ft = {"cpp", "lua", "c", "python", "sh"},
  }                               -- 高亮着色

  use {
    "p00f/nvim-ts-rainbow",
    after = "treesitter"
  }  -- 好看的括号匹配

  use {
    'neovim/nvim-lspconfig',
    config = function()
      require("plugins.configs.lspconfig")
    end
  }                               -- Lsp 服务器

  use {
    'rafamadriz/friendly-snippets',
    event = "InsertEnter",
    module = "cmp_nvim_lsp",
  }

  use {
    'onsails/lspkind-nvim',
    after = "friendly-snippets",
  }

  use {
    "hrsh7th/nvim-cmp",
    after = "lspkind-nvim",
    config = function()
      require("plugins.configs.nvim-cmp")
    end
  }

  use  {
  'hrsh7th/cmp-nvim-lsp',
    after = "nvim-cmp",
  }

  use {
    'hrsh7th/cmp-cmdline',
    after = "cmp-nvim-lsp",
  }

  use {
    'hrsh7th/cmp-path',
    after = "cmp-cmdline",
  }

  use {
    'hrsh7th/cmp-buffer',
    after = "cmp-path",
  }

  use {
    'hrsh7th/cmp-vsnip',
    after = "cmp-buffer",
  }

  use {
    'hrsh7th/vim-vsnip',
    after = "cmp-vsnip",
  }

  -- 让我的lsp看起来更好看
  use {
    "glepnir/lspsaga.nvim",
    -- after = "nvim-cmp",
    branch = "main",
    config = function()
      require("plugins.configs.lspsaga")
    end,
  }

  -- markdown 预览
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  }

  -- 一个管理窗口的插件，非常好用
  use {
    "akinsho/toggleterm.nvim"
  }

  -- 突出显示光标下的单词
  use {
    "yamatsum/nvim-cursorline",
    config = function()
      require("plugins.configs.cursorline")
    end
  }

  -- 让你的缩进线花里胡哨
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("plugins.configs.blankline")
    end
  }

  -- 将你可爱的nvim集成到chrome里面去
  use {
    "glacambre/firenvim",
    opt = false,
    run = function() 
      vim.fn['firenvim#install'](0) 
    end
  }

  -- 有点用但好像又没用的目录树
  use {
    "kyazdani42/nvim-tree.lua",
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
  }

  -- 更好的窗口切换管理
  use {
    "sindrets/winshift.nvim",
    cmd = "WinShift",
    config = function()
      require("plugins.configs.winshift");
    end
  }

  -- 窗口高亮
  use {
    "sunjon/Shade.nvim",
    config = function()
      require("plugins.configs.shade")
    end
  }

  -- 大纲显示
  use {
    "stevearc/aerial.nvim",
    config = function()
      require("plugins.configs.aerial")
    end
  }
end)
