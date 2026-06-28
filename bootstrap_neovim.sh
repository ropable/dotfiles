# https://github.com/neovim/neovim/blob/master/INSTALL.md
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# https://www.lazyvim.org/
# Personalised LazyVim config
git clone https://github.com/ropable/nvim-config ~/.config/nvim
