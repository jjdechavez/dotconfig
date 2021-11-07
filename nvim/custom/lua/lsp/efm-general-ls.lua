DATA_PATH = vim.fn.stdpath('data')

local luaFormat = {
  formatCommand = 'lua-format -i --no-keep-simple-function-one-line --column-limit=120 --indent-width=2 --double-quote-to-single-quote',
  formatStdin = true
}

local prettierFormat = {
 formatCommand =  "./node_modules/.bin/prettier --stdin-filepath ${INPUT}",
 formatStdin =  true
}

local eslintFormat = {
    lintCommand = "eslint -f visualstudio --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f(%l,%c): %tarning %m", "%f(%l,%c): %rror %m"}
    -- lintCommand = "./node_modules/.bin/eslint -f unix --stdin --stdin-filename ${INPUT}",
    -- lintFormats = {"%f:%l:%c: %m"},
    -- formatCommand = "./node_modules/.bin/eslint --fix-to-stdout --stdin --stdin-filename=${INPUT}",
    -- formatStdin = true
}

require"lspconfig".efm.setup {
    -- cmd = {'efm-langserver', '-logfile', '/tmp/efm.log', '-loglevel', '5'},
    cmd = {DATA_PATH .. "/lspinstall/efm/efm-langserver"},
    init_options = {documentFormatting = true},
    filetypes = {"lua", "javascriptreact", "javascript", 'typescriptreact', 'typescript'},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {luaFormat},
            javascript = {prettierFormat, eslintFormat},
            javascriptreact = {prettierFormat, eslintFormat},
            typescript = {prettierFormat, eslintFormat},
            typescriptreact = {prettierFormat, eslintFormat},
            html = {prettierFormat},
            css = {prettierFormat},
            json = {prettierFormat},
            yaml = {prettierFormat},
        }
    }
}
