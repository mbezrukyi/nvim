# nvim

Needs Neovim ≥ 0.12, git, ripgrep.

    git clone https://github.com/mbezrukyi/nvim.git ~/.config/nvim
    nvim

Confirm the plugin install on first launch.

- LSP servers: `:Mason`, then add the name to `vim.lsp.enable` in `init.lua`
- Update plugins: `:lua vim.pack.update()`
