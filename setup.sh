#!/bin/bash

# Sets up all the necessary dot files in this repo
script_dir=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

ln -sf $script_dir/vimrc ~/.vimrc
ln -sf $script_dir/gitconfig ~/.gitconfig
ln -sf $script_dir/tmux.conf ~/.tmux.conf
ln -sf $script_dir/inputrc ~/.inputrc
ln -sf $script_dir/bash_aliases ~/.bash_aliases

# Claude code set up
mkdir -p ~/.claude/
ln -sf $script_dir/claude/commands ~/.claude/commands

# Xcode keybindings set up
ln -sf $script_dir/iOS/Daisuke.idekeybindings  ~/Library/Developer/Xcode/UserData/KeyBindings/Daisuke.idekeybindings

# VSCode related set up
for extension in $(cat $script_dir/vscode/extensions.txt)
do
    code --install-extension $extension
done

ln -s -f $script_dir/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s -f $script_dir/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# Vim plugin set up
vim_pack_dir=~/.vim/pack/plugins
mkdir -p $vim_pack_dir
git clone https://github.com/itchyny/lightline.vim $vim_pack_dir/start/lightline
git clone https://github.com/scrooloose/nerdtree.git $vim_pack_dir/start/nerdtree
git clone https://github.com/ctrlpvim/ctrlp.vim $vim_pack_dir/start/ctrlp

echo "Installing command + apps via brew"
# Terminal commands
brew install --quiet tree
brew install --quiet fish
brew install --quiet gh

# MacOS applications
brew install --quiet rectangle
brew install --quiet flux
brew install --quiet docker

# tmux plugins
tmux_plugin_dir=~/.tmux/plugins
mkdir -p $tmux_plugin_dir
git clone https://github.com/tmux-plugins/tmux-cpu $tmux_plugin_dir/tmux-cpu

# .config setups
for config_dir in $(ls $script_dir/config)
do
    mkdir -p ~/.config/$config_dir
    for config_file in $(ls $script_dir/config/$config_dir)
    do
        echo "Symlinking $config_dir/$config_file in ~.config/$config_dir"
        ln -sfv $script_dir/config/$config_dir/$config_file ~/.config/$config_dir
    done
done

echo 'Done'
