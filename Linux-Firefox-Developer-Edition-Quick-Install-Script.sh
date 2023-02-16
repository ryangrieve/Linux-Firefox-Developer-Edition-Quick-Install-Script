#!/bin/bash

# Download latest version of Firefox Developer Edition
cd ~/Downloads
wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"

# Install Firefox Developer Edition to /opt/firefox-developer-edition
sudo tar -xjf ~/Downloads/firefox.tar.bz2 -C /opt/ --transform 's/firefox/firefox-developer-edition/'

# Create start menu launcher for Firefox Developer Edition
sudo tee /usr/share/applications/firefox-developer-edition.desktop > /dev/null <<EOT
[Desktop Entry]
Name=Firefox Developer Edition
Comment=Web Browser
Exec=/opt/firefox-developer-edition/firefox
Icon=/opt/firefox-developer-edition/browser/chrome/icons/default/default128.png
Type=Application
Categories=Network;WebBrowser;
EOT

# Remove Firefox archive from the Downloads folder
rm -f ~/Downloads/firefox.tar.bz2

echo "Firefox Developer Edition installed successfully."
