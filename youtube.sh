#!/data/data/com.termux/files/usr/bin/bash

echo -e "Updating default packages\n"
apt update && apt -y upgrade
echo -e "Installing Required Tools"
apt install termux-api figlet python ffmpeg -y

echo -e "Requesting access to storage\n"
termux-setup-storage
sleep 5

echo -e "Installing Dependencies\n"
yes | pip install youtube-dl

echo -e "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Creating bin folder\n"
mkdir ~/bin
 
echo -e "Downloading and installing termux-url-opener\n"
curl https://raw.githubusercontent.com/leptr/termux-youtube-downloader/master/termux-url-opener -o ~/bin/termux-url-opener
sleep 1
dos2unix ~/bin/termux-url-opener

echo -e "\n"
echo -e "YouTube Downloader successfully installed"
