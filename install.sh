#!/bin/bash

echo "Environment setup"
echo "==============================="

echo "Setting up oh-my-zsh..."
cp $HOME/.zshrc ./.zshrc.bkp    # backup .zshrc
cp ./files/.zshrc $HOME/.zshrc  # Replace .zshrc created by oh-my-zsh with custom conf
source $HOME/.zshrc

echo "Setting up git config..."
cp ./files/.gitconfig $HOME/.gitconfig

echo "Installing Visual Studio Code..."
brew cask install visual-studio-code

echo "Setting up Visual Studio Code..."
cp ./vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/
cp ./vscode/settings.json $HOME/Library/Application\ Support/Code/User/
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension eamodio.gitlens
code --install-extension formulahendry.auto-close-tag
code --install-extension eg2.vscode-npm-script

echo "Done!"