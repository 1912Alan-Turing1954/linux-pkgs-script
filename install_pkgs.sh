#!/usr/bin/env bash

declare -a PKGS=(gimp nmap htop neovim vim virtualbox)
for i in "${PKGS[@]}"; do
    check=$(command -v "$i")
    if [[ $? -ne 0 ]]; then
        sudo apt install "$i" -y
    fi
done

echo "Intsalling brave browser, would you like to continue."

confirm() {
    read -p "(Press enter to continue or [Y/N]): " prompt
    if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes"  || $prompt == "" || $prompt == " " $prompt == "n" || $prompt == "N" || $prompt == "no" || $prompt == "No"]]
    then
        sudo apt install curl

        sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

        echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

        sudo apt install brave-browser -y

        sudo apt install software-properties-common apt-transport-https wget -y

        wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

        sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y

        sudo apt install code -y
    else
        return 
    fi
}

sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt install brave-browser -y

sudo apt install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y

sudo apt install code -y

sudo apt update