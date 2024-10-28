#!/data/data/com.termux/usr/bin/bash

# Define colors for output
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[0;33m'
blue='\e[1;34m'
RESET="\033[00m"
orange='\e[38;5;166m'

# Check the last command's exit status
check_last_command() {
    if [ "$?" -ne 0 ]; then
        echo -e "${red}[×] ERROR: $1"
        exit 1
    fi
}

# Internet connection check
clear
echo -e "${cyan}Checking internet connection..."
wget -q --spider https://hackerwasii.com
check_last_command "Failed to connect to the internet. Please check your connection."

echo -e "${okegreen}[✔] Internet Connection: CONNECTED!"
sleep 1

# Script banner
clear
echo -e "${cyan}==============================="
echo -e "${blue}     Waseem's Hydra Installer"
echo -e "${cyan}===============================${RESET}"
echo -e "${green}Version: 1.0${RESET}"
echo -e "${green}Author: Waseem Akram"
echo -e "${green}Website: https://hackerwasii.com${RESET}"
sleep 1

# Dependencies Installation
echo -e "${yellow}Installing Dependencies..."
dependencies=("unstable-repo" "cmake")
for package in "${dependencies[@]}"; do
    echo -e "${cyan}Installing $package..."
    pkg install "$package" -y >/dev/null 2>&1
    check_last_command "Failed to install $package."
done

# Hydra Setup and Compilation
dir="thc-hydra"
if [ -d "$dir" ]; then
    echo -e "${cyan}Directory 'thc-hydra' found. Compiling Hydra..."
    cd "$dir" >/dev/null 2>&1
else
    echo -e "${cyan}Cloning 'thc-hydra' repository..."
    rm -rf "$dir" >/dev/null 2>&1
    git clone https://github.com/vanhauser-thc/thc-hydra "$dir" >/dev/null 2>&1
    check_last_command "Failed to clone the thc-hydra repository."
    cd "$dir" >/dev/null 2>&1
fi

echo -e "${cyan}Compiling Hydra, please wait..."
chmod +x * >/dev/null 2>&1
./configure >/dev/null 2>&1
check_last_command "Configuration failed."
make >/dev/null 2>&1
check_last_command "Compilation failed."
make install PREFIX=$PREFIX >/dev/null 2>&1
check_last_command "Installation failed."

echo -e "${lightgreen}Hydra Compiled Successfully!"
echo -e "${lightgreen}To start Hydra, type 'hydra' in your terminal.${RESET}"
