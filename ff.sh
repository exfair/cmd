wget -O /tmp/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=tr"
mkdir ~/share/applications
cat >> $HOME/share/applications/Firefox-portable.desktop << EOF
[Desktop Entry]
Type=Application
Name=Firefox Portable
Comment=Firefox Portable
Exec=$HOME/firefox/firefox
Icon=$HOME/firefox/browser/chrome/icons/default/default128.png
Categories=Network;
StartupNotify=false
Terminal=false
EOF
tar -xvf /tmp/firefox.tar.bz2 -C ~/
