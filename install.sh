#!/bin/sh
path=$(pwd)

# PowerLevel10k
ln -sf $path/.p10k.zsh $HOME/.p10k.zsh

# Ensure config directory exists
[ ! -d $HOME/.config ] && mkdir $HOME/.config

# Ensure local share directory exists
# Local directory
[ ! -d $HOME/.local ] && mkdir -p $HOME/.local/share
[ ! -d $HOME/.local/share ] && mkdir $HOME/.local/share

# Fonts
[ -d $HOME/.local/share/fonts ] && rm -r $HOME/.local/share/fonts
ln -sf $path/.local/share/fonts $HOME/.local/share/fonts

# Alacritty
[ -d $HOME/.config/alacritty ] && rm -rf $HOME/.config/alacritty
ln -sf $path/config/alacritty $HOME/.config/alacritty

# ZSH
[ ! -d $HOME/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

