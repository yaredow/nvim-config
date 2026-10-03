# nvim-config

Fast, modular Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Features

- **Package Manager:** [lazy.nvim](https://github.com/folke/lazy.nvim)
- **LSP & Tooling:** Native Neovim LSP with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
  - Automatically uses **Mason** on standard Linux/macOS systems.
  - Automatically falls back to system-provided binaries on **NixOS** (preventing dynamic linker errors).
- **Completion:** [blink.cmp](https://github.com/Saghen/blink.cmp) / nvim-cmp
- **Formatting:** [conform.nvim](https://github.com/stevearc/conform.nvim)
- **Linting:** [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- **Highlighting:** [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **UI & Navigation:** [snacks.nvim](https://github.com/folke/snacks.nvim), [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim), [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)

## Installation

### On standard Linux / macOS

```bash
# Clone the configuration
git clone https://github.com/<your-username>/nvim-config.git ~/.config/nvim

# Launch Neovim
nvim
```
Plugins will be installed automatically by `lazy.nvim`, and language servers will be installed via `mason.nvim`.

### On NixOS

Language servers and compilers are provided declaratively via Nix packages (`gcc`, `tree-sitter`, `ripgrep`, LSPs, formatters). Clone this repository to `~/.config/nvim` (or symlink it).
