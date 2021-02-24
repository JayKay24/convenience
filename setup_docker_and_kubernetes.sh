#!/usr/bin/env bash

brew uninstall skaffold

brew install --cask docker

sleep 5m

kubectl apply -f "https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.44.0/deploy/static/provider/cloud/deploy.yaml"

brew install skaffold

