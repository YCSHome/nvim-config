local plugins = {
  ["wbthomason/packer.nvim"] = { },-- 插件管理器
  ["morhetz/gruvbox"] = { },       -- 主题
  ["folke/tokyonight.nvim"] = { }, -- 主题
  ["EdenEast/nightfox.nvim"] = { },-- 主题
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
      require("plugins.configs.nvim-treesitter")
    end,
    ft = {"cpp", "lua", "c", "python", "sh"},
  },                               -- 高亮着色
  ["p00f/nvim-ts-rainbow"] = {
    after = "nvim-treesitter"
  },  -- 好看的括号匹配

  ['neovim/nvim-lspconfig'] = {
    ft = {"cpp", "c"},
    config = function()
      require("plugins.configs.lspconfig")
    end
  },                               -- Lsp 服务器

  ['onsails/lspkind-nvim'] = {
  },

  ['hrsh7th/nvim-cmp'] = {
    event = "InsertEnter",
    requires = {
      { 'hrsh7th/cmp-nvim-lsp', after = "nvim-cmp", },
      { 'hrsh7th/cmp-cmdline', after = "nvim-cmp", },
      { 'hrsh7th/cmp-path', after = "nvim-cmp", },
      { 'hrsh7th/cmp-buffer', after = "nvim-cmp", },
      { 'hrsh7th/cmp-vsnip', after = "nvim-cmp", },
      { 'hrsh7th/vim-vsnip', after = "nvim-cmp", },
      { 'rafamadriz/friendly-snippets', after = "nvim-cmp"},
    },
    config = function()
      require("plugins.configs.nvim-cmp")
    end,
  },

  -- 让我的lsp看起来更好看
  ["glepnir/lspsaga.nvim"] = {
    -- after = "nvim-cmp",
    after = "nvim-lspconfig",
    branch = "main",
    config = function()
      require("plugins.configs.lspsaga")
    end,
  },

  -- markdown 预览
  ["euclio/vim-markdown-composer"] = {
    run = "cargo build --release",
    config = function() 
       require("plugins.configs.markdown-composer")
    end,
    ft = {"markdown"}
  },
  -- ["iamcco/markdown-preview.nvim"] = {
  --   run = "cd app && npm install",
  --   setup = function()
  --     require("plugins.configs.markdown")
  --   end,
  --   ft = { "markdown" },
  -- },

  -- 关于内置终端
  ["akinsho/toggleterm.nvim"] = {
    ft = {"cpp", "c", "python", "lua"},
    config = function()
      require("plugins.configs.toggleterm")
    end
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
  -- ["glacambre/firenvim"] = {
  --   opt = false,
  --   run = function() 
  --     vim.fn['firenvim#install'](0) 
  --   end
  -- },

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
    ft = {"cpp", "c", "lua", "python"},
    config = function()
      require("plugins.configs.aerial")
    end
  },

  -- 调试工具
  ["mfussenegger/nvim-dap"] = {
    ft = {"cpp", "c"},
    config = function()
      require("plugins.configs.nvim-dap")
    end,
    requires = {
      { "theHamsta/nvim-dap-virtual-text", after = "nvim-dap"},
    },
  },

  ["numToStr/Comment.nvim"] = {
    ft = {"cpp", "c", "lua", "python"}, 
    config = function()
      require("plugins.configs.comment")
    end,
  },

  -- 一个非常小的插件，可以让我的注释更加具有可读性
  ["Djancyp/better-comments.nvim"] = {
    config = function()
      require("plugins.configs.better-comments")
    end
  },
}

vim.api.nvim_command("packadd packer.nvim")

require("core.packer").run(plugins)
