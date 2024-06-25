# 💤 LazyVim

## Introduction

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Features

- [x] NeoVide

## Neovim Plugin List

我已经安装的插件如下：

- **dressing.nvim** - Improved UI for input and select
- **leap.nvim** - Motion plugin for Neovim
- **indent-blankline.nvim** - Indentation guides
- **neo-tree.nvim** - File explorer
- **gitsigns.nvim** - Git integration
- **Comment.nvim** - Commenting utility
- **telescope.nvim** - Fuzzy finder
- **aerial.nvim** - Code outline window
- **toggleterm.nvim** - Terminal integration
- **nvim-autopairs** - Auto pairs for brackets and quotes
- **grug-far.nvim** - Fuzzy file finder and replacer
- **bufferline.nvim** - Buffer line plugin
- **lualine.nvim** - Statusline plugin
- **nvim-navic** - Statusline component that shows your current code context
- **barbecue.nvim** - VS Code-like breadcrumb navigation
- **auto-save.nvim** - Automatically save your work
- **bufdelete.nvim** - Delete buffers without messing up your layout
- **winresizer** - Easy window resizing
- **neovim-session-manager** - Simple session management
- **nvim-window-picker** - Easy window switching
- **vim-illuminate** - Highlight other uses of the current word under the cursor
- **nvim-treesitter** - Treesitter configurations and abstraction layer
- **nvim-treesitter-textobjects** - Syntax-aware text objects
- **nvim-surround** - Surround text objects

## Usage

``` bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/wq-july/nvim ~/.config/nvim

rm -rf ~/.config/nvim/.git

nvim

```

## Font

我使用的字体

```

sudo apt-get update
sudo apt-get install fontconfig unzip -y

cd fonts
unzip JetBrainsMono.zip -d JetBrainsMono
unzip KaiTi.zip
sudo cp -r JetBrainsMono /usr/share/fonts/
sudo cp -r Hack /usr/share/fonts/
sudo cp -r Chinese /usr/share/fonts/

fc-cache -fv
fc-list

```