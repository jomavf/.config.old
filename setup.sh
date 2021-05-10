#!/bin/bash

# verbose mode in bash
set -v

## Instructions
# 1. Install fonts

## Global Variables (empty for now)

## HOMEBREW

# Requirements and installation

xcode-select --install || { 
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh 
}

## Alfred 4
brew install alfred
## Hyperswitch
brew install hyperswitch
## Spectacle
brew install spectacle
## Explorer - Chrome - Firefox - Brave
brew install chrome
brew install firefox
brew install brave

## Discord
brew install discord

## Iterm 2
brew install iterm2
## NVIM 5
brew install --HEAD neovim

## Creation of files

# .zprofile
cd $HOME/
touch .zprofile
cat << EOF > .zprofile
export EDITOR="nvim"
export ZDOTDIR="$HOME/.config/zsh"
alias vim="nvim"


