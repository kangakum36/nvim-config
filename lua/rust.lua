-- [[rust.lua]]

-- rust-tools
local rust_runnables = {
    use_telescope = true,
}

local rust_on_attach = function(client, bufnr)
    local keymap_opts = { buffer = bufnr }
    vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, keymap_opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, keymap_opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, keymap_opts)
end

local rust_inlay_hints = {
    auto = true,
    show_parameter_hints = false,
    parameter_hints_prefix = "",
    other_hints_prefix = "",
}

local rust_analyzer_settings = {
    ["rust-analyzer"] = {
        imports = {
            granularity = {
                group = "module",
            },
            prefix = "self",
        },
        cargo = {
            buildScripts = {
                enable = true,
            },
        },
        procMacro = {
            enable = true
        },
        checkOnSave = true,
        check = {
            command = "clippy",
        },
    }
}

local rust_analyzer_opts = {
    tools = {
        runnables = rust_runnables,
        inlay_hints = rust_inlay_hints,
    },
    server = {
        on_attach = rust_on_attach,
        settings = rust_analyzer_settings,
    },
}

require('rust-tools').setup(rust_analyzer_opts)
