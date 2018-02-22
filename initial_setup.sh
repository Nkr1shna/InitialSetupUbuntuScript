#!/bin/sh
add-apt-repository ppa:tista/build
add-apt-repository ppa:numix/ppa
apt update
apt upgrade -y
apt install gnome-shell -y
apt install gnome-tweak-tool -y
apt install sassc -y
apt install autoconf -y
apt install automake -y
apt install pkg-config -y
apt install libgtk-3-dev -y
apt install git
cd Desktop/
git clone https://github.com/andreisergiu98/arc-flatabulous-theme --depth 1 && cd arc-flatabulous-theme
./autogen.sh --prefix=/usr
make install
cd ..
rm -R arc-flatabulous-theme/
apt install numix-icon-theme-circle -y
wget -O vscode.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
dpkg -i vscode.deb -y
rm vscode.deb
mv set-login-wallpaper ~/.local/share/nautilus/scripts/
cd ~/.local/share/nautilus/scripts/
chmod +x set-login-wallpaper



