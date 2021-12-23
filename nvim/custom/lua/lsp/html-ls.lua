-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  filetypes = { "html", "html.heex" },
  on_attach = require'lsp'.common_on_attach,
  capabilities = capabilities,
}
