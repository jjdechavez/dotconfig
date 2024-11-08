local null_ls = require("null-ls")
local helpers = require("null-ls.helpers")
local utils = require("null-ls.utils")

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
-- local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false, -- View logs on :NullLsLog
  -- onsave format
  -- on_attach = function(client)
  --   if client.server_capabilities.documentFormattingProvider then
  --     vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ timeout_ms = 2000 })")
  --   end
  -- end,
  sources = {
    formatting.prettier.with({
      -- extra_args = { "--single-quote", "--jsx-single-quote" },
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "css",
        "scss",
        "less",
        "html",
        "json",
        "yaml",
        "markdown",
        "graphql",
        "heex",
        "edge"
      },
      cwd = helpers.cache.by_bufnr(function(params)
        return utils.root_pattern(
        -- https://prettier.io/docs/en/configuration.html
          ".prettierrc",
          ".prettierrc.json",
          ".prettierrc.yml",
          ".prettierrc.yaml",
          ".prettierrc.json5",
          ".prettierrc.js",
          ".prettierrc.cjs",
          ".prettier.config.js",
          ".prettier.config.cjs",
          ".prettierrc.toml",
          "package.json"
        )(params.bufname)
      end),
    }),
    -- formatting.eslint,
    -- formatting.mix,
    formatting.elm_format,
    -- formatting.black.with { extra_args = { "--fast" } },
    -- formatting.djhtml,
    -- formatting.gofmt,
    -- formatting.prismaFmt,
    -- formatting.blade_formatter.with({
    --   extra_args = { "--indent-size=2" },
    --   filetypes = { "edge", "blade" }
    -- formatting.stylua,
    -- })
  },
}
