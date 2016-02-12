#!/bin/bash

function backup {
  BACKUP_DIR=~/BACKUP/`date +%s`
  mkdir -p $BACKUP_DIR
  #vim backup
  [[ -d ~/.vim ]] &&  mv ~/.vim $BACKUP_DIR
  [[ -e ~/.vimrc ]] && mv ~/.vimrc $BACKUP_DIR
}

function install {
  #vim
  ln -s "`pwd`/vimrc" ~/.vimrc
  git clone https://github.com/VundleVim/Vundle.vim.igt ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
}

backup
install

echo DONE!
