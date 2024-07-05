#!/bin/bash 

# create symlinks
ln -s ~/.config/.wezterm.lua .wezterm.lua
ln -s ~/.config/.zhistory .zhistory
ln -s ~/.config/.zshrc .zshrc
ln -s ~/.config/.tmux.conf .tmux.conf
ln -s ~/.config/.gitconfig .gitconfig

# install package manager on linux
# sh <(curl -L https://nixos.org/nix/install) --daemon

# install package manager on mac
# sh <(curl -L https://nixos.org/nix/install)

# install packages
cd ~/.config/.nix-global/
nix profile install .
nix progile upgrade --all

# https://sandstorm.de/de/blog/post/my-first-steps-with-nix-on-mac-osx-as-homebrew-replacement.html
