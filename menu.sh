#!/data/data/com.termux/files/usr/bin/bash

# Warna
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
cyan='\033[1;36m'
nc='\033[0m'

# Cek figlet
if ! command -v figlet &> /dev/null; then
    echo -e "${yellow}[!] Install figlet dulu...${nc}"
    pkg install figlet -y
fi

while true; do
clear
figlet -f slant "VANSTR11" | lolcat 2>/dev/null || figlet -f slant "VANSTR11"
echo -e "${cyan}================================================${nc}"
echo -e "${red}        Z A I D A L V A N   T O O L S  v3.0${nc}"
echo -e "${yellow}           Coded By : VANSTR11${nc}"
echo -e "${cyan}================================================${nc}"
echo ""
echo -e "${green}[01]${nc} ${blue}Update & Upgrade Package${nc}"
echo -e "${green}[02]${nc} ${blue}Install Python + Pip${nc}"
echo -e "${green}[03]${nc} ${blue}Install Git${nc}"
echo -e "${green}[04]${nc} ${blue}Install Figlet & Toilet${nc}"
echo -e "${green}[05]${nc} ${blue}Install Ruby + Lolcat${nc}"
echo -e "${green}[06]${nc} ${blue}Install Wget & Curl${nc}"
echo -e "${green}[07]${nc} ${blue}Install Nano & Vim${nc}"
echo -e "${green}[08]${nc} ${blue}Check System Info${nc}"
echo -e "${green}[09]${nc} ${blue}Check IP Public${nc}"
echo -e "${green}[10]${nc} ${blue}Matrix Effect${nc}"
echo -e "${red}[00]${nc} ${red}Exit Program${nc}"
echo ""
echo -e "${cyan}================================================${nc}"
read -p $'\e[1;32m[PILIH] => \e[0m' pilih

case $pilih in
  01|1) clear; echo -e "${yellow}[+] Updating...${nc}"; pkg update && pkg upgrade -y ;;
  02|2) clear; echo -e "${yellow}[+] Install Python...${nc}"; pkg install python -y; pip install --upgrade pip ;;
  03|3) clear; echo -e "${yellow}[+] Install Git...${nc}"; pkg install git -y ;;
  04|4) clear; echo -e "${yellow}[+] Install Figlet Toilet...${nc}"; pkg install figlet toilet -y ;;
  05|5) clear; echo -e "${yellow}[+] Install Lolcat...${nc}"; pkg install ruby -y; gem install lolcat ;;
  06|6) clear; echo -e "${yellow}[+] Install Wget Curl...${nc}"; pkg install wget curl -y ;;
  07|7) clear; echo -e "${yellow}[+] Install Nano Vim...${nc}"; pkg install nano vim -y ;;
  08|8) clear; echo -e "${yellow}[+] System Info:${nc}"; neofetch 2>/dev/null || uname -a ;;
  09|9) clear; echo -e "${yellow}[+] IP Public lu:${nc}"; curl -s ifconfig.me ;;
  10) clear; echo -e "${green}[+] Tekan CTRL+C buat keluar${nc}"; sleep 2; pkg install cmatrix -y; cmatrix ;;
  00|0) echo -e "${red}Keluar... Sampai jumpa bro!${nc}"; exit 0 ;;
  *) echo -e "${red}[!] Pilihan salah bro!${nc}"; sleep 1 ;;
esac
echo ""
read -p "Tekan Enter buat balik ke menu..."
done
