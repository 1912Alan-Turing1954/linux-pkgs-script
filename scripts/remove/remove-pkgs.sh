#!/usr/bin/env bash

declare -a PKGS=(gimp nmap htop neovim vim virtualbox ranger dolphin)
for i in "${PKGS[@]}"; do
    check=$(command -v "$i")
    if [[ $? -ne 0 ]]; then
        sudo apt remove "$i" -y
    fi
done

sudo apt remove brave-browser -y

sudo apt remove software-properties-common apt-transport-https wget -y

sudo apt remove code -y

sudo apt update -y && sudo apt upgrade -y