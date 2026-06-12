sudo apt install pip -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install flamerobin -y
sudo apt install tmux -y
sudo apt install wl-clipoard -y
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.telegram.desktop
flatpak install --user flathub org.remmina.Remmina
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
cp -a .[^.]* ~/ -r
