local lspconfig = require 'lspconfig'
local configs = require 'lspconfig/configs'

-- Check if tailwindls server already defined.
if not lspconfig.tailwindcss then configs['tailwindls'] = {default_config = {}} end

lspconfig.tailwindcss.setup {
    settings = {
        tailwindCSS = {
          experimental = {
            classRegex = {
              "tw`([^`]*)", -- tw`...`
              "tw=\"([^\"]*)", -- <div tw="..." />
              "tw={\"([^\"}]*)", -- <div tw={"..."} />
              "tw\\.\\w+`([^`]*)", -- tw.xxx`...`
              "tw\\(.*?\\)`([^`]*)"
            }
          }
        }
    },
    filetypes = {'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'},
    root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git", "tailwind.config.js"),
    handlers = {
        ["tailwindcss/getConfiguration"] = function(_, _, params, _, bufnr, _)
            -- tailwindcss lang server waits for this repsonse before providing hover
            vim.lsp.buf_notify(bufnr, "tailwindcss/getConfigurationResponse", {_id = params._id})
        end
    },
    on_attach = require'lsp'.common_on_attach
}
