-- [[completion.lua]]

local cmp = require("cmp")
local cmp_mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<CR>"] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
    }),
}

local cmp_sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "buffer" },
}

local cmp_opts = {
    preselect = cmp.PreselectMode.None,
    mapping = cmp_mapping,
    sources = cmp_sources
}

cmp.setup(cmp_opts)
