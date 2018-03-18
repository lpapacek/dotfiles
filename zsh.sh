#!/bin/bash

echo "Installing oh-my-zsh..."
export ZSH="$HOME/dotfiles/oh-my-zsh"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
