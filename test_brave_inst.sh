#!/usr/bin/env bash
do
    echo ""sudo apt install curl

    echo "sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg"

    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"
    
    echo "sudo tee /etc/apt/sources.list.d/brave-browser-release.list"

    echo "sudo apt update"

    echo "sudo apt install brave-browser"
done
