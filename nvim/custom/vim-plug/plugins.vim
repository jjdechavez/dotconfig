" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'kyazdani42/nvim-tree.lua'

    " Code completion | LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'hrsh7th/nvim-compe'
    Plug 'glepnir/lspsaga.nvim'

    " New Autocomplete
    " Plug 'hrsh7th/cmp-nvim-lsp'
    " Plug 'hrsh7th/cmp-buffer'
    " Plug 'hrsh7th/nvim-cmp'

    " Snippets
    " Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    Plug 'rafamadriz/friendly-snippets'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Highlights
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'
    
    " Theme
    Plug 'tomasiser/vim-code-dark'
    Plug 'arzg/vim-colors-xcode'    
    Plug 'morhetz/gruvbox'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'adrian5/oceanic-next-vim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'mhartington/oceanic-next'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'itchyny/lightline.vim'

    " Git
    Plug 'tpope/vim-fugitive'

    " FZ
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'  
    Plug 'nvim-lua/popup.nvim'

    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

    " Languages
    " elixir
    Plug 'elixir-editors/vim-elixir'
    Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
    " rails
    Plug 'tpope/vim-rails'

    " Etc
    " Solidity syntax files for Solidity
    Plug 'tomlion/vim-solidity'
    " Commenting
    Plug 'tpope/vim-commentary'
    " Debugging
    Plug 'mfussenegger/nvim-dap'
    " Ranger
    Plug 'kevinhwang91/rnvimr'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Close html tags
    Plug 'AndrewRadev/tagalong.vim'
    " Idention guide
    " Plug 'lukas-reineke/indent-blankline.nvim'
    " Linting
    " Plug 'dense-analysis/ale'
    " Project cwd
    Plug 'ahmedkhalf/project.nvim'
    " Buffer styles
    Plug 'akinsho/bufferline.nvim'

call plug#end()
