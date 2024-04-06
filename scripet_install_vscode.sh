#!/bin/bash

# Update package lists
sudo apt update

# Install dependencies
sudo apt install -y curl wget gnupg2

# Download Microsoft GPG key and add to trusted keys
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

# Add VS Code repository to package manager's sources list
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# Update package lists again
sudo apt update

# Install Visual Studio Code
sudo apt install code


