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
  use 'iamcco/markdown-preview.nvim'
  use 'mg979/vim-visual-multi'
  use 'wakatime/vim-wakatime'
  use 'taigacute/dashboard-nvim'

  -- Game
  use 'ThePrimeagen/vim-be-good'
  use 'ThePrimeagen/vim-apm'
  use 'seandewar/nvimesweeper'
  use 'alec-gibson/nvim-tetris'
  
end)
