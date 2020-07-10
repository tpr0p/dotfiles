#!/bin/bash

# emacs
sudo apt-get install emacs
mv ./emacs/.emacs ~/.emacs
# TODO: M-x package-refresh-contents; M-x package-install julia-mode

# tmux
sudo apt-get install tmux
mv ./tmux/.tmux.conf ~/.tmux.conf

