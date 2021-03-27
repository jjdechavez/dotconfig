-- npm i -g pyright
require'lspconfig'.pyright.setup {
    -- cmd = {"/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
    -- on_attach = require'lsp'.common_on_attach
    -- capabilities = capabilities
}
