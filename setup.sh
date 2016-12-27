#!/bin/bash

function backup {
  BACKUP_DIR=~/BACKUP/`date +%s`
  mkdir -p $BACKUP_DIR
  #vim backup
  [[ -d ~/.vim ]] &&  mv ~/.vim $BACKUP_DIR/vim
  [[ -e ~/.vimrc ]] && mv ~/.vimrc $BACKUP_DIR/vimrc
  #eslint backup
  [[ -e ~/.eslint* ]] && mv ~/.eslint* $BACKUP
  #tmux backup
  [[ -e ~/.tmux.conf ]] && mv ~/.tmux.conf $BAKUP
}

function install {
  #vim
  mkdir -p ~/.vim/_backup ~/.vim/_tmp ~/.vim/bundle
  ln -s "`pwd`/vimrc" ~/.vimrc
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
  #eslint
  ln -s "`pwd`/eslintrc" ~/.eslintrc.json
  #tmux
  ln -s "`pwd`/tmux.conf" ~/.tmux.conf
}

backup
install

echo DONE!
