local lsp = require("lsp-zero")

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

-- configure LSP example
-- lsp.configure('tsserver', {
--   on_attach = function(client, bufnr)
--     print('hello tsserver')
--   end
-- })

lsp.configure('tailwindcss', {
  root_dir = function(fname)
    local root_pattern = require("lspconfig.util").root_pattern(
      "tailwind.config.cjs",
      "tailwind.config.js",
      "postcss.config.js"
    )
    return root_pattern(fname)
  end,
})

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { 'tsserver', 'lua_ls' },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

local cmp = require('cmp')
local cmp_action = lsp.cmp_action()

-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- local cmp_mappings = lsp.defaults.cmp_mappings({
--   ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--   ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
--   ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--   ["<C-Space>"] = cmp.mapping.complete(),
-- })

-- priority for completion
local cmp_sources = {
  { name = "nvim_lsp" },
  { name = "nvim_lua" },
  { name = "luasnip" },
  { name = "buffer" },
  { name = "path" },
}

local luasnip = require('luasnip')

local cmp_snippets = {
  expand = function(args)
    luasnip.lsp_expand(args.body)
  end,
}

luasnip.filetype_extend("edge", { "html" })
luasnip.filetype_extend("gohtmltmpl", { "html" })
-- Custom snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/repos/friendly-snippets" } })
-- require("luasnip.loaders.from_vscode").lazy_load()


cmp.setup({
  sources = cmp_sources,
  snippets = cmp_snippets,
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    -- confirm completion item
    ['<Enter>'] = cmp.mapping.confirm({ select = true }),

    -- trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- scroll up and down the documentation window
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),

    -- navigate between snippet placeholders
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- disable completion with tab
    -- this helps with copilot setup
    ['<Tab>'] = nil,
    ['<S-Tab>'] = nil,
  }),
  -- note: if you are going to use lsp-kind (another plugin)
  -- replace the line below with the function from lsp-kind
  -- formatting = lsp.cmp_format({details = true}),
})

lsp.set_preferences({
  suggest_lsp_servers = false,
  -- sign_icons = {
  --     error = 'E',
  --     warn = 'W',
  --     hint = 'H',
  --     info = 'I'
  -- },
  sign_icons = {
    error = '',
    warn = '',
    hint = '',
    info = ''
  }
})

lsp.on_attach(function(client, bufnr)
  if client.name == "eslint" then
    vim.cmd.LspStop('eslint')
    return
  end

  if client.name == "tsserver" then
    client.server_capabilities.documentFormattingProvider = false
  end

  local nmap = function(keys, func, desc)
    if desc then
      desc = "LSP: " .. desc
    end

    vim.keymap.set("n", keys, func, { buffer = bufnr, remap = false, desc = desc })
  end

  -- Common I used
  nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
  nmap("K", vim.lsp.buf.hover, "Hover Documentation")
  nmap("<leader>ca", "<cmd>lua require('fzf-lua').lsp_code_actions()<CR>", "[C]ode [A]ction")
  nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

  -- Diagnostic
  nmap("<leader>dd", "<cmd>lua require('fzf-lua').diagnostics_document()<CR>",
    "[D]iagnostic [D]ocuments or current buffer")
  nmap("[d", vim.diagnostic.goto_next, "Goto Next [D]iagnostic")
  nmap("]d", vim.diagnostic.goto_prev, "Goto Previous [D]iagnostic")

  -- Dunno how to use it
  nmap("gI", vim.lsp.buf.type_definition, "[G]oto [I]mplementation")
  nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")
  -- nmap("<C-K>", vim.lsp.buf.signature_help, "Signature Documentation")
end)

lsp.setup()

require "fidget".setup {}

vim.diagnostic.config({
  -- disable next warning on current line
  virtual_text = false,
  underline = false
})
