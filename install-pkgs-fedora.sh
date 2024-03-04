#!/usr/bin/env bash

declare -a PKGS=(gimp nmap htop neovim vim virtualbox ranger)
for i in "${PKGS[@]}"; do
    check=$(command -v "$i")
    if [[ $? -ne 0 ]]; then
        sudo dnf install "$i" -y
    fi
done

sudo dnf install curl

sudo rpm --import https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo -e "[brave-browser]\nname=Brave Browser\nbaseurl=https://brave-browser-apt-release.s3.brave.com/\$releasever/\$basearch/\nenabled=1\ngpgcheck=1\ngpgkey=https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg" | sudo tee /etc/yum.repos.d/brave-browser.repo

sudo dnf install brave-browser -y

sudo dnf install dnf-plugins-core dnf-plugins-extras-*.noarch wget -y

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo dnf config-manager --add-repo=https://packages.microsoft.com/repos/vscode

sudo dnf install code -y

sudo dnf update -y && sudo dnf upgrade -y