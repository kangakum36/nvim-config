-- [[python.lua]]

-- basedpyright
-- install with: npm install -g basedpyright

local python_on_attach = function(client, bufnr)
    local keymap_opts = { buffer = bufnr }
    vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, keymap_opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, keymap_opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, keymap_opts)
end

local basedpyright_settings = {
    basedpyright = {
        analysis = {
            autoSearchPaths = true,
            useLibraryCodeForTypes = true,
            diagnosticMode = "openFilesOnly",
        },
    },
}

require('lspconfig').basedpyright.setup({
    on_attach = python_on_attach,
    settings = basedpyright_settings,
})
