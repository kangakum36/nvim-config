# Neovim Configuration

Minimal Neovim setup focused on Rust and Python development.

## Features
- Carbonfox theme
- LSP with rust-analyzer
- LSP with basedpyright (requires `basedpyright-langserver` on PATH — `npm install -g basedpyright`)
- Completion via nvim-cmp
- FZF and Telescope for fuzzy finding

## Key Bindings
- `K` - Hover documentation
- `gd` - Go to definition
- `<leader>d` - Show diagnostics
- `<C-p>/<C-n>` - Navigate completions

## Installation
1. Install vim-plug
2. Run `:PlugInstall` in Neovim
3. Restart Neovim