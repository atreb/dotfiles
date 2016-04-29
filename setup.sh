#!/bin/bash

#-----------------------------------------------------
# Following installations is assumed:
# - wget vim git tmux. In osx use brew to install on arch use pacman
# - binary package of nodejs installed at ~/DEV so that no need to use sudo for global install
# Following files should exist:
# - /Users/atreb/DEV/certificates/decoded.crt
#-----------------------------------------------------

function backup {
  BACKUP_DIR=~/BACKUP/`date +%s`
  mkdir -p $BACKUP_DIR
  #bash_profile
  [[ -e ~/.bash_profile ]] && mv ~/.bash_profile $BACKUP/bash_profile
  #git backup
  [[ -e ~/.gitconfig ]] && mv ~/.gitconfig $BACKUP_DIR/gitconfig
  #npmrc backup
  [[ -e ~/.npmrc ]] && mv ~/.npmrc $BACKUP_DIR/npmrc
  #vim backup
  [[ -d ~/.vim ]] &&  mv ~/.vim $BACKUP_DIR/vim
  [[ -e ~/.vimrc ]] && mv ~/.vimrc $BACKUP_DIR/vimrc
  #eslint backup
  [[ -e ~/.eslint* ]] && mv ~/.eslint* $BACKUP
  #tmux backup
  [[ -e ~/.tmux.conf ]] && mv ~/.tmux.conf $BAKUP
}

function install {
  #bash_profile
  ln -s "`pwd`/bash_profile" ~/.bash_profile
  #git
  ln -s "`pwd`/gitconfig" ~/.gitconfig
  #npmrc
  ln -s "`pwd`/npmrc" ~/.npmrc
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
