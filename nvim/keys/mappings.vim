" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
" inoremap jk <Esc>
" inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Move the highlight
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Search and replace
nmap <leader>s :%s/-/-/g<CR>

" CocRestart
cnoremap CR CocRestart<CR>
" BLines
cnoremap BL BL<CR>

" shell
map <leader>ba i#!/bin/sh<CR><CR>
autocmd FileType sh inoremap ,f ()<Space>{<CR><Tab><++><CR>}<CR><CR><++><Esc>?()<CR>

" html
autocmd FileType html inoremap ! <!DOCTYPE html><CR><html lang="en"><CR><head><CR><meta charset="UTF-8"><CR><meta name="viewport" content="width=device-width, initial-scake=1.0"><CR><title>Document</title><CR></head><CR><body><CR><CR></body><CR></html>

" ts
" autocmd FileType ts nnoremap <C-t> I//
