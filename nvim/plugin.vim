call plug#begin('~/.vim/plugged')

" Themes and syntax highlighting
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'gruvbox-community/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'shaunsingh/nord.nvim'

" LSP Configuring Plugin and Snippets
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Look
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'itchyny/lightline.vim'

" Comment ,auto-pairs , version control
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/mbbill/undotree.git'
Plug 'preservim/nerdcommenter'

" Telescople
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Vim be good game
Plug 'ThePrimeagen/vim-be-good'

call plug#end()

