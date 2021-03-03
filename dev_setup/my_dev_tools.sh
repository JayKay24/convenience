#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh

brew install wget
brew install curl

brew install --cask iterm2

brew install --cask postman
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask mongodb-compass
brew install --cask slack
brew install --cask microsoft-teams
brew install --cask kindle
brew install --cask microsoft-edge
brew install --cask devdocs

brew tap mongodb/brew
brew install mongodb-community@4.4

brew install postgresql

brew install tree
brew install speedtest-cli

brew install --cask docker
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.44.0/deploy/static/provider/cloud/deploy.yaml

setUpNodeJs(){
  wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
  echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
}

setUpNodeJs

