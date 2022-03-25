cd ~/Downloads
wget https://gitlab.com/exlance/ex/-/raw/main/pcloud
chmod +x pcloud
mkdir -p ~/bin-files/
mv pcloud ~/bin-files/
cd ~/bin-files/
./pcloud
touch ~/Desktop/pcloud.desktop
nano ~/Desktop/pcloud.desktop
sudo cp ~/Desktop/pcloud.desktop /usr/share/applications/
