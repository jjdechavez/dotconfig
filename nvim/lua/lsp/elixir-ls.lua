-- curl -fLO https://github.com/elixir-lsp/elixir-ls/releases/latest/download/elixir-ls.zip
-- unzip elixir-ls.zip -d /path/to/elixir-ls
-- # Unix
-- chmod +x /path/to/elixir-ls/language_server.sh
require'lspconfig'.elixirls.setup{
  cmd = { "~/.elixir-ls/release/language_server.sh" };
}
