#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh

brew install wget
brew install curl
brew cask install docker
brew cask install postman
brew install tree

setUpNodeJs(){
  wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
  echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
}

setUpNodeJs

