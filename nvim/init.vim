" General
luafile $HOME/.config/nvim/lua/global.lua
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/path/paths.vim
source $HOME/.config/nvim/keys/mappings.vim

" Plug config's
" Vim plug config
" source $HOME/.config/nvim/plug-config/coc.vim
" source $HOME/.config/nvim/plug-config/identLine.vim
" source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
" source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/vsnip.vim
" source $HOME/.config/nvim/plug-config/nvimtree-config.vim
" source $HOME/.config/nvim/plug-config/telescope-config.vim

" Lua plug config
" luafile $HOME/.config/nvim/lua/plugins/compe-config.lua
luafile $HOME/.config/nvim/lua/plugins/lspinstall-config.lua
luafile $HOME/.config/nvim/lua/plugins/nvimtree-config.lua
luafile $HOME/.config/nvim/lua/plugins/treesitter-config.lua
luafile $HOME/.config/nvim/lua/plugins/dap-config.lua

" LSP
source $HOME/.config/nvim/plug-config/lsp-config.vim
luafile $HOME/.config/nvim/lua/lsp/efm-general-ls.lua
luafile $HOME/.config/nvim/lua/lsp/python-ls.lua
luafile $HOME/.config/nvim/lua/lsp/ruby-ls.lua
luafile $HOME/.config/nvim/lua/lsp/js-ts-ls.lua
luafile $HOME/.config/nvim/lua/lsp/html-ls.lua
luafile $HOME/.config/nvim/lua/lsp/bash-ls.lua
luafile $HOME/.config/nvim/lua/lsp/css-ls.lua
luafile $HOME/.config/nvim/lua/lsp/graphql-ls.lua
luafile $HOME/.config/nvim/lua/lsp/vim-ls.lua
luafile $HOME/.config/nvim/lua/lsp/lua-ls.lua
luafile $HOME/.config/nvim/lua/lsp/tailwindcss-ls.lua
" luafile $HOME/.config/nvim/lua/lsp/elixir-ls.lua


" Theme's
source $HOME/.config/nvim/themes/airline.vim
" source $HOME/.config/nvim/themes/vim-colors-xcode.vim
" source $HOME/.config/nvim/themes/gruvbox.vim
source $HOME/.config/nvim/themes/oceanic-next.vim
" source $HOME/.config/nvim/themes/solorized.vim
