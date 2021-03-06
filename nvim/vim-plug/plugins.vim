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
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Code completion | LSP
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Indentline
    " Plug 'Yggdroot/indentLine'   

    " Theme
    Plug 'tomasiser/vim-code-dark'
    Plug 'arzg/vim-colors-xcode'    
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'adrian5/oceanic-next-vim'

    " Git
    Plug 'tpope/vim-fugitive'

    " FZ
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'  
    " Commenting
    Plug 'tpope/vim-commentary'

    " Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

    " Solidity syntax files for Solidity
    Plug 'tomlion/vim-solidity'

    " elixir
    Plug 'elixir-editors/vim-elixir'
    Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

call plug#end()

" autocmd VimEnter *
" \ if len(filter(values(g:plugs),))
