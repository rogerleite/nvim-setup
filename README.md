# My nvim dotfiles

This setup is using the amazing https://www.lazyvim.org/

## Install nvim

Oficial site: https://github.com/neovim/neovim/wiki/Installing-Neovim

Feel free to install the way you want, I like to use `asdf` to install and manage my neovim.

* To install asdf use: https://asdf-vm.com/guide/getting-started.html#_1-install-asdf
* Install [asdf-neovim plugin](https://github.com/richin13/asdf-neovim) (`asdf plugin add neovim`)
* You can list the neovim versions available with `asdf list-all neovim` 
* And install one specific version or the stable or nightly builds
* My current setup:
* * `asdf version v0.17.0`
* * `asdf install neovim 0.11.1`
* * `asdf set --home neovim 0.11.1`

After that, you can open the neovim typing: `nvim` in your prompt.

## How to setup nvim

My setup intention is to support Elixir, Sql and Ruby. Feel free to open a pull request or maintain your fork.
To use the nvim settings, clone the repo and make an `nvim` alias on `$HOME/.config` directory.

```
$ cd ~/.config
$ git clone https://github.com/rogerleite/nvim-setup.git
$ ln -s nvim-setup/ nvim
```

TODO: put the steps to setup lazyvim here

## Guide to some plugin's dependencies

### Install nerd font

To make the icons work (from nvim-tree and lualine for example), you need a font patched with nerd font.
I like to use [JetBrainsMono](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/font-info.md#installation).

**Brew (macOS only)**
Tap the font cask to make the Jetbrains Mono font available :
`$ brew tap homebrew/cask-fonts`

Install it using the font-jetbrains-mono cask:
`$ brew install --cask font-jetbrains-mono`
`$ brew install --cask font-jetbrains-mono-nerd-font`

**Manual instalation** for Linux/Mac/Windows
https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/font-info.md#manual-installation

Change your terminal font to the one with nerd font patched.
If you use iterm2 like me, you can change the font in Preferences -> Profile -> Text.

### Telescope dependencies

Telescope [suggested dependencies](https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies).
You can have an analysis of your Telescope dependencies using: `:checkhealth telescope` in nvim. 

The non optional dependencies for me are:
* BurntSushi/ripgrep is required for `live_grep` and `grep_string`. [Install link](https://github.com/BurntSushi/ripgrep#installation).
* fd is a simple, fast and user-friendly alternative to `find`. [install link](https://github.com/sharkdp/fd#installation).

** macOs users can use brew**
`$ brew install ripgrep`
`$ brew install fd`
