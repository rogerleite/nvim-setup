
# My nvim dotfiles

These lua configurations were based on the amazing videos of [[chris@machine]](https://www.chrisatmachine.com/), the source repo is [here](https://github.com/LunarVim/Neovim-from-scratch).

## Install nvim

Oficial site: https://github.com/neovim/neovim/wiki/Installing-Neovim

Feel free to install the way you want, I like to use `asdf` to install and manage my neovim.

* To install asdf I cloned the repo and source it in my `~/.bash_profile`. The how to guide and many other options are available [here](https://asdf-vm.com/guide/getting-started.html#_2-download-asdf)
* Install [asdf-neovim plugin](https://github.com/richin13/asdf-neovim) (`asdf plugin add neovim`)
* You can list the neovim versions available with `asdf list-all neovim` 
* And install one specific version or the stable or nightly builds
* My current setup:
* * `asdf install neovim 0.7.2`
* * `asdf global neovim 0.7.2` 

After that, you can open the neovim typing: `nvim` in your prompt.

## How to setup nvim

This setup uses [packer.nvim](https://github.com/wbthomason/packer.nvim).
The list of all plugins are available at [plugins.lua](https://github.com/rogerleite/nvim-setup/blob/main/lua/user/plugins.lua#L42).
Languages that are supported:
* Clojure
* Elixir
* Dart / Flutter

It's open to contributions. In the future I want to support sql and ruby. Feel free to open a pull request or maintain your fork. 

To install, clone the repo and make an `nvim` alias on `$HOME/.config` directory.

```
$ cd ~/.config
$ git clone https://github.com/rogerleite/nvim-setup.git
$ ln -s nvim-setup/ nvim
```

Before opening nvim, it's important to install some plugin dependencies. (No problem if you opened, it'll show a [packer](https://github.com/wbthomason/packer.nvim) message with plugins install and probably the parinfer-rust failed)

This is important if you use **Clojure mode**:
In order to use [parinfer-rust](https://github.com/eraserhd/parinfer-rust) you need to [install rust](https://www.rust-lang.org/tools/install). Feel free to install the way you want, my suggestion is to use `asddf` because is very practical. 

* To install asdf I cloned the repo and source it in my `~/.bash_profile`. The how to guide and many other options are available [here](https://asdf-vm.com/guide/getting-started.html#_2-download-asdf)
* Install [asdf-rust plugin](https://github.com/asdf-community/asdf-rust):
* `$ asdf plugin add rust`
* You can list the rust versions available with:
* `asdf list-all rust`
* Parinfer-rust **expects rust >= 1.36**
* My current setup:
* * `$ RUST_WITHOUT=rust-docs asdf install rust 1.63.0`
* * `$ asdf global rust 1.63.0`
* * `$ source ~/.asdf/installs/rust/1.63.0/env`
* * `$ rustup default 1.63.0`

If you have some errors about parinfer when you open Clojure code, you can try to build a new release using:
* `$ cd ~/.local/share/nvim/site/pack/packer/opt/parinfer-rust`
* `$ cargo build --release`

## How to use Clojure mode

TODO
