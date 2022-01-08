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

# Terminal commands
brew install tree

# MacOS applications
brew install rectangle
brew install flux
brew install docker

# zsh + plugins
ln -sf $script_dir/zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

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
