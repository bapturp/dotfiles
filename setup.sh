#!/usr/bin/env bash

OS=$(lsb_release -si)
VER=$(lsb_release -sr)

ub1404() {
  cd $HOME 
  curl -O https://raw.githubusercontent.com/bapturp/dotfiles/master/.bash_profile
  curl -O https://raw.githubusercontent.com/bapturp/dotfiles/master/.bashrc
  curl -O https://raw.githubusercontent.com/bapturp/dotfiles/master/.vimrc
}




case $OS in
  "Ubuntu")
    case $VER in
      "14.04")
        echo -e "Ubuntu 14.04 detected, installing dofiles"
        ub1404
        cd ~
        ;;
      *)
        echo "unknow version of Ubuntu"
        ;;
    esac
  ;;
  *)
    echo "Unknow distribution"
    exit 1
    ;;
esac

