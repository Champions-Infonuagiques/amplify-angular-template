#!/bin/bash

# This is a post-create command script for the dev container

sudo apt-get update
sudo apt-get install -y xdg-utils

mkdir -p ~/.aws
cp /workspaces/amplify-angular-template/.aws-config ~/.aws/config

yarn global add @angular/cli
yarn install

# Load Angular CLI autocompletion.
echo "source <(ng completion script)" >> /root/.bashrc
