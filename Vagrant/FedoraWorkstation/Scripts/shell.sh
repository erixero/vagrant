#!/bin/bash

# Zsh, terminator
dnf install -y zsh terminator

# Configure terminator
echo "export DISPLAY=:0" >> $HOME/.zshrc
ssh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# PowerLevel10k Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

# Oh my Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ZSH_THEME="agnoster"

