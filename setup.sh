#!/bin/bash

function backup {
  BACKUP_DIR=~/BACKUP/`date +%s`
  mkdir -p $BACKUP_DIR
  #vim backup
  [[ -d ~/.vim ]] &&  mv ~/.vim $BACKUP_DIR/vim
  [[ -e ~/.vimrc ]] && mv ~/.vimrc $BACKUP_DIR/vimrc
}

function install {
  #vim
  mkdir -p ~/.vim/_backup ~/.vim/_tmp ~/.vim/bundle ~/.vim/colors
  ln -s "`pwd`/vimrc" ~/.vimrc
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  wget -O ~/.vim/colors/jellybeans.vim https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/jellybeans.vim
  vim +PluginInstall +qall
}

backup
install

echo DONE!
