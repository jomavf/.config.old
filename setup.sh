#!/bin/bash

# verbose mode in bash
set -v

## Instructions
# 1. Install fonts

## Global Variables (empty for now)

## HOMEBREW

# brew installation

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Alfred 4
brew install alfred
## Hyperswitch
brew install hyperswitch
## Spectacle
brew install spectacle
## Explorer - Chrome - Firefox - Brave
brew install --cask google-chrome
brew install firefox
brew install brave-browser

## Discord
brew install discord

## Iterm 2
brew install iterm2
## NVIM 5
brew install --HEAD neovim

## TMUX
brew install tmux

## brew install nvm and NVM setup
mkdir $HOME/.nvm
brew install nvm
nvm install node
nvm install --lts
nvm use node
nvm run node --version
cd $HOME
touch .zshenv
cat << EOF > .zshenv
    export NVM_DIR="$HOME/.nvm"
    NVM_HOMEBREW="/usr/local/opt/nvm/nvm.sh"
    [ -s "$NVM_HOMEBREW" ] && \. "$NVM_HOMEBREW"
    [ -x "$(command -v npm)" ] && export NODE_PATH=$NODE_PATH:`npm root -g`
EOF
## Creation of files

# .zprofile
cd $HOME/
touch .zprofile
cat << EOF > .zprofile
    export EDITOR="nvim"
    export ZDOTDIR="$HOME/.config/zsh"
    alias vim="nvim"
EOF


# fast-syntax-highlighting plugin installation
mkdir -p $HOME/githubPlugins
git clone https://github.com/zdharma/fast-syntax-highlighting $HOME/githubPlugins/fast-syntax-highlighting

# FZF
brew install fzf

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
