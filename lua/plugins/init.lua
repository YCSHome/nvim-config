return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- gruvbox theme
  use {
    "ellisonleao/gruvbox.nvim",
    requires = {"rktjmp/lush.nvim"}
  }
  -- using packer.nvim
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use 'rakr/vim-one'
  use 'neoclide/coc.nvim'
  use 'skywind3000/asyncrun.vim'
  use 'voldikss/vim-floaterm'
  use 'sainnhe/edge'
  use 'sheerun/vim-polyglot'
end)
