#!/bin/bash

# update apt
sudo apt update

# emacs
sudo apt install emacs
cp ./emacs/.emacs ~/.emacs
# TODO: M-x package-refresh-contents; M-x package-install julia-mode

# tmux
sudo apt install tmux
cp ./tmux/.tmux.conf ~/.tmux.conf

