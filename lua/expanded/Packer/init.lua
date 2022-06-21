local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require("packer").startup(function()
  use { "wbthomason/packer.nvim" } -- 插件管理器
  use { "morhetz/gruvbox" }        -- 主题
  use {
    "skywind3000/asyncrun.vim",
    ft = {"cpp", "c", "lua", "python"},
    config = function()
      require("expanded.code")
    end
  }                                -- 异步编译插件
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function() 
      require("expanded.nvim-treesitter")
    end,
    ft = {"cpp", "lua", "c", "python", "sh"},
  }                                -- 高亮着色

  use {
    'neovim/nvim-lspconfig',
    opt = true,
    ft = {"cpp", "lua", "c", "python", "sh"},
    config = function()
      require("expanded.Lsp")
    end
  }                                -- Lsp 服务器

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'           -- 补全
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets' -- 这不用说都知道吧
  use 'onsails/lspkind-nvim'       -- 小图标

  use 'folke/lsp-colors.nvim'
  use 'glepnir/lspsaga.nvim'       -- 颜值翻倍的小东西

  if packer_bootstrap then
    require("packer").sync()
  end
end)
