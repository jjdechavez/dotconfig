-- gem install --user-install solargraph

local util = require('lspconfig/util')

require'lspconfig'.solargraph.setup{
    cmd = {DATA_PATH .. "/lspinstall/ruby/solargraph/solargraph", "stdio"},
    on_attach = require'lsp'.common_on_attach,
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = {
                spacing = 0, prefix = ""
            },
            signs = true,
            underline = true,
            update_in_insert = true
        })
    },
    filetypes = {'rb', 'erb', 'rakefile'},
    root_dir = util.root_pattern("Gemfile", ".git")
}
