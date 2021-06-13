#!/data/data/com.termux/usr/bin/bash
#Color selection
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[0;33m'
BlueF='\e[1;34m' #Biru
RESET="\033[00m" #normal
orange='\e[38;5;166m'
#Checking internet connection
clear
wget -q --spider https://hackerwasii.blogspot.com
if [ "$?" -eq 0 ]; then
        echo -e $okegreen [✔]::[Internet Connection]: CONNECTED!;
        sleep 1
else
        echo -e $red [×]::[Internet Connection]: OFFLINE!;
        echo -e $yellow   "Kindly connect With Internet or WIFI"
        sleep 2
exit
fi
##########
#### Script starts
clear
echo ""
echo ""
echo ""
echo ""
echo -e $cyan  "             █░█ █▄█ █▀▄ █▀█ ▄▀█   █ █▄░█ "
echo -e $red   "             █▀█ ░█░ █▄▀ █▀▄ █▀█   █ █░▀█ "
echo ""
echo -e $yellow"               ▀█▀ █▀▀ █▀█ █▀▄▀█ █░█ ▀▄▀    "
echo -e $BlueF "              ░█░ ██▄ █▀▄ █░▀░█ █▄█ █░█    "
echo ""
echo -e $lightgreen "                  ᐯ乇尺丂丨ㄖ几 1.0    "
echo -e $green "         卂ㄩㄒ卄ㄖ尺 : 山卂丂乇乇爪 卂Ҝ尺卂爪"
echo -e $cyan  "               Wんﾑｲ丂ﾑｱｱ : +923137119351"
echo ""
echo ""
sleep 2.0
echo -e $yellow " 𝕴𝖓𝖘𝖙𝖆𝖑𝖑𝖎𝖓𝖌 𝕯𝖊𝖕𝖊𝖓𝖉𝖊𝖓𝖈𝖎𝖊𝖘......."
sleep 2.0
echo -e $cyan   " 𝕻𝖑𝖊𝖆𝖘𝖊 𝖜𝖆𝖎𝖙 𝖎𝖙 𝖜𝖎𝖑𝖑 𝖙𝖆𝖐𝖊 𝖘𝖔𝖒𝖊 𝖙𝖎𝖒𝖊..."
echo -e $red    " 𝖉𝖊𝖕𝖊𝖓𝖉𝖘 𝖔𝖓 𝖞𝖔𝖚𝖗 𝖎𝖓𝖙𝖊𝖗𝖓𝖊𝖙 𝖈𝖔𝖓𝖓𝖊𝖈𝖙𝖎𝖔𝖓.."
echo ""
apt upgrade -y > /dev/null 2>&1
apt update -y > /dev/null 2>&1
pkg install unstable-repo -y > /dev/null 2>&1
pkg install cmake -y > /dev/null 2>&1
dir=thc-hydra
if [ -d "$dir" ]; then
cd thc-hydra > /dev/null 2>&1
echo -e $cyan   " ℌ𝔶𝔡𝔯𝔞 ℭ𝔬𝔪𝔭𝔦𝔩𝔦𝔫𝔤 𝔖𝔱𝔞𝔯𝔱...             "
chmod +x * > /dev/null 2>&1
./configure > /dev/null 2>&1
make > /dev/null 2>&1
make install PREFIX=$PREFIX > /dev/null 2>&1
sleep 2.0
echo -e $red    " 𝐻𝓎𝒹𝓇𝒶 𝒞𝑜𝓂𝓅𝒾𝓁𝑒𝒹 𝒮𝓊𝒸𝒸𝑒𝓈𝓈𝒻𝓊𝓁𝓁𝓎....      "
sleep 2.0
echo ""
echo -e $lightgreen " 刀のW 尺ひ刀 $red Hydra $lightgreen ｲの 丂ｲﾑ尺ｲ んﾘり尺ﾑ  "
else
echo -e $cyan   " 𝕴𝖓𝖘𝖙𝖆𝖑𝖑𝖎𝖓𝖌 𝖈𝖔𝖗𝖊 𝖋𝖎𝖑𝖊𝖘...."
rm -rf thc-hydra > /dev/null 2>&1
git clone https://github.com/vanhauser-thc/thc-hydra > /dev/null 2>&1
cd thc-hydra > /dev/null 2>&1
echo -e $cyan   " ℌ𝔶𝔡𝔯𝔞 ℭ𝔬𝔪𝔭𝔦𝔩𝔦𝔫𝔤 𝔖𝔱𝔞𝔯𝔱...             "
chmod +x * > /dev/null 2>&1
./configure > /dev/null 2>&1
make > /dev/null 2>&1
make install PREFIX=$PREFIX > /dev/null 2>&1
sleep 2.0
echo -e $red    " 𝐻𝓎𝒹𝓇𝒶 𝒞𝑜𝓂𝓅𝒾𝓁𝑒𝒹 𝒮𝓊𝒸𝒸𝑒𝓈𝓈𝒻𝓊𝓁𝓁𝓎....      "
sleep 2.0
echo ""
echo -e $lightgreen " 刀のW 尺ひ刀 $red Hydra $lightgreen ｲの 丂ｲﾑ尺ｲ んﾘり尺ﾑ  "
fi
