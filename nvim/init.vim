" General
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/path/paths.vim

" Plug config's
" Vim plug config
source $HOME/.config/nvim/keys/mappings.vim
" source $HOME/.config/nvim/plug-config/coc.vim
" source $HOME/.config/nvim/plug-config/identLine.vim
" source $HOME/.config/nvim/plug-config/nerdtree.vim
" source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/nvimtree-config.vim
source $HOME/.config/nvim/plug-config/telescope-config.vim
" Lua plug config
luafile $HOME/.config/nvim/lua/plugins/compe-config.lua
" luafile $HOME/.config/nvim/lua/plugins/nvimtree-config.lua

" LSP
source $HOME/.config/nvim/plug-config/lsp-config.vim
luafile $HOME/.config/nvim/lua/lsp/python-ls.lua
luafile $HOME/.config/nvim/lua/lsp/typescript-ls.lua
luafile $HOME/.config/nvim/lua/lsp/html-ls.lua

" Theme's
source $HOME/.config/nvim/themes/airline.vim
" source $HOME/.config/nvim/themes/vim-colors-xcode.vim
" source $HOME/.config/nvim/themes/gruvbox.vim
" source $HOME/.config/nvim/themes/oceanic-next.vim
" source $HOME/.config/nvim/themes/solorized.vim
" hi Normal guibg=NONE ctermbg=NONE

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
