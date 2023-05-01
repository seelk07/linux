#!/bin/bash

echo "---------------------------------"
echo "Creating VIM directories"
echo "---------------------------------"
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged

echo "---------------------------------"
echo "Installing vim-plug"
echo "---------------------------------"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "---------------------------------"
echo "Downloading and moving .vimrc file to $HOME"
echo "---------------------------------"
#wget -N https://raw.githubusercontent.com/seelk07/linux/main/.vimrc -P /tmp
curl -fLo /tmp/.vimrc https://raw.githubusercontent.com/seelk07/linux/main/.vimrc
mv -i /tmp/.vimrc ~/.vimrc

echo "---------------------------------"
echo "Installing VIM pluggins"
echo "---------------------------------"
vim -c "PlugInstall"
