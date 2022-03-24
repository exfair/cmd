cd ~/Downloads
wget https://gitlab.com/exlance/ex/-/raw/d519ad9c41e44bf2f1a787372cb4cb55144a2066/pcloud
chmod +x pcloud
mkdir -p ~/bin-files/
mv pcloud ~/bin-files/
cd ~/bin-files/
./pcloud
touch ~/Desktop/pcloud.desktop
nano ~/Desktop/pcloud.desktop
sudo cp ~/Desktop/pcloud.desktop /usr/share/applications/
