#!/usr/bin/env bash

declare -a PKGS=(gimp nmap vscode htop neovim vim virtualbox)
for i in "${PKGS[@]}"; do
    check=$(command -v "$i")
    if [[ $? -ne 0 ]]; then
        sudo apt install "$i" -y
    fi
done

sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser
