# Minimal LazyVim Starter

## What is this?

An alternative to [LazyVim](https://github.com/LazyVim/LazyVim) that uses fewer dependencies.

Few dependencies:

- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [mini.bufremove](https://github.com/nvim-mini/mini.bufremove) (used with bufferline.nvim)

## Installation

- Make a backup of your current Neovim files:

```sh
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

- Clone this starter

```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

- Remove the `.git` folder, so you can add it to your own repo later

```sh
rm -rf ~/.config/nvim/.git
```

- Start Neovim!

```sh
nvim
```
