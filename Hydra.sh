#!/data/data/com.termux/usr/bin/bash

# Color selection
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[0;33m'
BlueF='\e[1;34m' # Blue
RESET="\033[00m" # Normal
orange='\e[38;5;166m'

# Function to check the last command's exit status
check_last_command() {
    if [ "$?" -ne 0 ]; then
        echo -e $red "[×]::[ERROR]: $1"
        exit 1
    fi
}

# Checking internet connection
clear
echo -e $cyan "Checking internet connection..."
wget -q --spider https://hackerwasii.com
check_last_command "Failed to connect to the internet. Please check your connection."

echo -e $okegreen "[✔]::[Internet Connection]: CONNECTED!"
sleep 1

##########
#### Script starts

clear
echo -e $cyan "\n\n\n\n"
echo -e $cyan "             █░█ █▄█ █▀▄ █▀█ ▄▀█   █ █▄░█ "
echo -e $red "             █▀█ ░█░ █▄▀ █▀▄ █▀█   █ █░▀█ "
echo -e $yellow "               ▀█▀ █▀▀ █▀█ █▀▄▀█ █░█ ▀▄▀    "
echo -e $BlueF "              ░█░ ██▄ █▀▄ █░▀░█ █▄█ █░█    "
echo -e $lightgreen "                  Version 1.0     "
echo -e $green "                 Author: Waseem Akram"
echo -e $cyan "               WhatsApp : +923137119351"
echo -e $RESET "\n\n"
sleep 2.0

echo -e $yellow "Installing Dependencies..."
sleep 1.0

echo -e $cyan "Updating package lists and upgrading existing packages. Please wait..."
apt update -y >/dev/null 2>&1
check_last_command "Package update failed."

apt upgrade -y >/dev/null 2>&1
check_last_command "Package upgrade failed."

pkg install unstable-repo -y >/dev/null 2>&1
check_last_command "Failed to install unstable-repo."

pkg install cmake -y >/dev/null 2>&1
check_last_command "Failed to install cmake."

dir=thc-hydra
if [ -d "$dir" ]; then
    echo -e $cyan "Directory 'thc-hydra' found. Compiling Hydra..."
    cd thc-hydra >/dev/null 2>&1
else
    echo -e $cyan "Directory 'thc-hydra' not found. Cloning repository..."
    rm -rf thc-hydra >/dev/null 2>&1
    git clone https://github.com/vanhauser-thc/thc-hydra >/dev/null 2>&1
    check_last_command "Failed to clone the thc-hydra repository."
    cd thc-hydra >/dev/null 2>&1
fi

echo -e $cyan "Compiling Hydra, please wait..."
chmod +x * >/dev/null 2>&1
./configure >/dev/null 2>&1
check_last_command "Configuration failed."

make >/dev/null 2>&1
check_last_command "Make command failed."

make install PREFIX=$PREFIX >/dev/null 2>&1
check_last_command "Installation failed."

echo -e $red "𝐻𝓎𝒹𝓇𝒶 𝒞𝑜𝓂𝓅𝒾𝓁𝑒𝒹 𝒮𝓊𝒸𝒸𝑒𝓈𝓈𝒻𝓊𝓁𝓁𝓎!"
sleep 2.0
echo -e $lightgreen "Now Run $red Hydra $lightgreen to start Hydra."