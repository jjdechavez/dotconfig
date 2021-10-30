" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-s> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" LspSaga
" nnoremap <silent> K :Lspsaga hover_doc<CR>
nnoremap <silent> <leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
" nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>
" nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1500)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 1500)
autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 1500)
autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 1500)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1500)
autocmd BufWritePre *.rb lua vim.lsp.buf.formatting_sync(nil, 1500)
" autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)
