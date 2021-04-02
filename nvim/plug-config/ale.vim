augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard', 'eslint', 'prettier'], 'jsx': ['standard', 'eslint', 'prettier']}

" linting and automatic fixing on save
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
