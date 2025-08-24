-- [[opts.lua]]

-- Appearance
local opt = vim.opt
opt.number=true
opt.syntax="on"
opt.termguicolors=true
opt.background="dark"

-- Search
opt.ignorecase=true
opt.incsearch=true
opt.hlsearch=true

-- Text 
opt.expandtab=true
opt.shiftwidth=4
opt.tabstop=4
opt.ttimeoutlen=0

-- Autocomplete
opt.completeopt = "menuone,noinsert,fuzzy"
opt.shortmess = vim.opt.shortmess + "c"
