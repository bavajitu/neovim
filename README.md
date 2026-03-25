## Neovim configuration:

This Neovim configuration is currently only tailored to advanced syntax highlighting and LSP support for C/C++.

### Key features:

- Advanced syntax highlighting using `treesitter.nvim`.
- Customized keybindings for a little better experience than the stock Neovim.
- Advanced LSP support using `williamboman/mason.nvim` for C/C++.
- Custom snippets for C++ and LaTeX using the `luasnip` plugin for Neovim.
- Implemented with a muted, easy on the eyes Kanagawa colorscheme (Dragon variant).

### Installation:

```bash
git clone https://github.com/bavajitu/neovim.git ~/.config/nvim/
cd ~/.config/nvim/
rm -rf .git
```

**Note**: Make sure to backup your existing Neovim configuration before overriding with this one.
