#!/usr/bin/env bash

declare -a PKGS=(gimp nmap vscode htop neovim vim virtualbox)
for i in "${PKGS[@]}"; do
    check=$(command -v "$i")
    if [[ $? -ne 0 ]]; then
        sudo apt remove "$i" -y
    fi
done
