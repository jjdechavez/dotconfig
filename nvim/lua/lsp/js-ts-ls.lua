-- npm install -g typescript typescript-language-server

-- LspInstall typescript cmd:
-- cmd = {DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio"},

require'lspconfig'.tsserver.setup{
  cmd = {"typescript-language-server", "--stdio"},
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  on_attach = require'lsp'.tsserver_on_attach,
  root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
  settings = {documentFormatting = false},
}
