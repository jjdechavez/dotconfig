-- Colors
-- hi LspReferenceRead cterm=none ctermbg=grey guibg=blue
-- hi LspReferenceText cterm=none ctermbg=grey guibg=blue
-- hi LspReferenceWrite cterm=none ctermbg=grey guibg=blue

local function documentHighlight(client, bufnr)
    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
      hi LspReferenceRead cterm=BOLD ctermbg=DarkGray guibg=LightGray
      hi LspReferenceText cterm=BOLD ctermbg=DarkGray guibg=LightGray
      hi LspReferenceWrite cterm=BOLD ctermbg=DarkGray guibg=LightGray
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)

    end

end
local lsp_config = {}

function lsp_config.common_on_attach(client, bufnr)
    documentHighlight(client, bufnr)
end

function lsp_config.tsserver_on_attach(client, bufnr)
    lsp_config.common_on_attach(client, bufnr)
    client.resolved_capabilities.document_formatting = false
end

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
-- local servers = {"pyright", "tsserver"}
-- for _, lsp in ipairs(servers) do nvim_lsp[lsp].setup {on_attach = on_attach} end
return lsp_config
