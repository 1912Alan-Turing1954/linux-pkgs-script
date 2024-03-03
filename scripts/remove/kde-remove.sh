#!/usr/bin/env bash

sudo apt remove kde-full

sudo apt remove kde-standard

sudo apt remove kde-plasma-desktop

sudo apt autoremove

sudo apt update -y && sudo apt upgrade -y

reboot