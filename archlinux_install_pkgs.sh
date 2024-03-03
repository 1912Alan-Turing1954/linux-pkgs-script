#!/usr/bin/env bash

declare -a PKGS=(gimp nmap htop neovim vim virtualbox)
for i in "${PKGS[@]}"; do
    check=$(command -v "$i")
    if [[ $? -ne 0 ]]; then
        sudo pacman -Sy "$i"
    fi
done

sudo pacman -Sy curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo pacman -Sy brave-browser

sudo pacman -Sy software-properties-common apt-transport-https wget 

# Import the Microsoft GPG key
gpg --recv-keys --keyserver keyserver.ubuntu.com FE3AE55DEC4D1DD3

# Add the VS Code repository to your pacman.conf
echo -e "\n[vscode]\nSigLevel = Optional TrustAll\nServer = https://packages.microsoft.com/arch/stable/\$arch" | sudo tee -a /etc/pacman.conf

# Update your package database
sudo pacman -Syu

sudo pacman -Sy code