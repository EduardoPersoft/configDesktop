sudo apt install pip -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install flamerobin -y
sudo apt install tmux -y
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
cp -a .[^.]* ~/ -r
