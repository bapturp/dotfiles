#!/usr/bin/env bash

OS=$(lsb_release -si)
VER=$(lsb_release -sr)

ub1404() {
  cd $HOME 
  curl -sO https://raw.githubusercontent.com/bapturp/dotfiles/master/.bash_profile
  curl -sO https://raw.githubusercontent.com/bapturp/dotfiles/master/.bashrc
  curl -sO https://raw.githubusercontent.com/bapturp/dotfiles/master/.vimrc
}

case $OS in
  "Ubuntu")
    case $VER in
      "14.04")
        echo -e "Ubuntu 14.04 detected, installing dofiles"
        ub1404
        exit 0
        ;;
      *)
        echo "Unknow version of Ubuntu, exiting."
        exit 1
        ;;
    esac
  ;;
  *)
    echo "Unknow distribution, exiting."
    exit 1
    ;;
esac

