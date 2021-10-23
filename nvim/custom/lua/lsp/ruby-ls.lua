-- gem install --user-install solargraph

local util = require('lspconfig/util')

require'lspconfig'.solargraph.setup{
    cmd = {DATA_PATH .. "/lspinstall/ruby/solargraph/solargraph", "--stdio"},
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
    filetypes = {'rb', 'erb', 'rakefile', 'ruby'},
    root_dir = util.root_pattern("Gemfile", ".git", ".")
}

-- local nvim_lsp = require("lspconfig")

-- nvim_lsp.solargraph.setup {
--     filetypes = {"ruby", "rakefile"},
--     root_dir = nvim_lsp.util.root_pattern("Gemfile", ".git", "."),
--     settings = {
--         solargraph = {
--             autoformat = true,
--             completion = true,
--             diagnostic = true,
--             folding = true,
--             references = true,
--             rename = true,
--             symbols = true
--         }
--     }
-- }
