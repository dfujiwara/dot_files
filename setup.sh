#!/bin/bash

# Sets up all the necessary dot files in this repo
script_dir=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

ln -sf $script_dir/vimrc ~/.vimrc
ln -sf $script_dir/gitconfig ~/.gitconfig
ln -sf $script_dir/tmux.conf ~/.tmux.conf
ln -sf $script_dir/inputrc ~/.inputrc
ln -sf $script_dir/bash_aliases ~/.bash_aliases

# Xcode keybindings set up
ln -sf $script_dir/iOS/Daisuke.idekeybindings  ~/Library/Developer/Xcode/UserData/KeyBindings/Daisuke.idekeybindings 

# Vim plugin set up
vim_pack_dir=~/.vim/pack/plugins
mkdir -p $vim_pack_dir
git clone https://github.com/itchyny/lightline.vim $vim_pack_dir/start/lightline

