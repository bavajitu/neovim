# My Neovim configuration

Hello, I am Bavajithu - the author of Brellary.nvim, a custom neovim color-scheme that replicates the palette of muted colors from Kanagawa.nvim.

---

I have several requirements to fulfill before I can really call a configuration great:

1. The configuration has to be minimal: There must be no bloat, no unused plugins that do nothing other than add up to the load time. Speaking of which;
2. Low loading time: I want my neovim to load as fast as it can. I don't want bloat, I don't want anything fancy to boot up, I just want neovim to open as fast as it can with my file.
3. Easy to replicate: Kind of hard to do without GitHub, now we have GitHub so this issue is already universally solved.

---

- I am using custom keybindings in this configuration that I've been using for the past 3 or so years.
- I was really tired of the fancy colorschemes in Neovim with all those neovim and bright and high contrast colors, which eventually led me to create my own colorscheme palette called "Brellary". The name means nothing, but the colorscheme does a lot.
  - To install Brellary, check out ![brellary.nvim](https://github.com/bavajitu/brellary.nvim).

---

## Usage:

Pretty simple, you just clone this repository, install tree-sitter in your machine along with some additional LSP Server that you might want to use, and it's ready to go.

- First backup all the existing neovim files, just to be safe.

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

```bash
git clone https://github.com/bavajitu/neovim.git ~/.config/nvim
```

**Note**: Remove the `.git` folder inside of `~/.config/nvim/` so that you can add your configurations to your repository later.

Have a great day!
