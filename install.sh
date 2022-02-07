#!/bin/bash

# emacs
sudo apt-get install emacs
cp ./emacs/.emacs ~/.emacs
# TODO: M-x package-refresh-contents; M-x package-install julia-mode

# tmux
sudo apt-get install tmux
cp ./tmux/.tmux.conf ~/.tmux.conf

