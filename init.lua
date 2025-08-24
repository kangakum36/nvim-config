local vim = vim

-- Enable filetype detection
vim.cmd('filetype plugin indent on')

-- Plugins
vim.cmd[[
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'EdenEast/nightfox.nvim'
Plug 'simrat39/rust-tools.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
]]


require('theme')
require('opts')
require('rust')
require('completion')
