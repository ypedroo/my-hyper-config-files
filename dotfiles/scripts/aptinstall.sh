#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install chromium-browser
install curl
install git
install wget
install fonts-firacode

# Fun stuff
install figlet
install lolcat