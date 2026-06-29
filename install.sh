sudo wget -O /etc/apt/keyrings/keys.anydesk.com.asc https://keys.anydesk.com/repos/DEB-GPG-KEY 
sudo chmod a+r /etc/apt/keyrings/keys.anydesk.com.asc
echo "deb [signed-by=/etc/apt/keyrings/keys.anydesk.com.asc] https://deb.anydesk.com all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list

wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg --dearmor
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian trixie contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/google-linux-signing-key.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google-linux-signing-key.gpg] http://dl.google.com/linux/chrome/deb/ stable main" 

cd /tmp && wget -q -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/ && cd $HOME
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge.list

sudo apt update
sudo apt install pip -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install flamerobin -y
sudo apt install tmux -y
sudo apt install wl-clipoard -y
sudo apt install xclip -y
sudo apt install virtualbox -y 
sudo apt install anydesk -y & systemctl disable anydesk.service --now
sudo apt install microsoft-edge-stable -y
sudo apt install google-chrome-stable -y

sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.telegram.desktop
flatpak install flathub org.remmina.Remmina
flatpak install flathub com.obsproject.Studio

sudo apt install curl
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
sudo ln -s /usr/bin/nvim /opt/nvim-linux-x86_64/bin/nvim
cp -a .[^.]* ~/ -r
