#!/bin/sh
#
#TODO: set -/+ e stop on failure

DOTFILES_DIR=${dirname $0}

echo "Install and configure oh-my-zsh and used plugins"
sudo apt install zsh
sudo apt install wget
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
mv ~/.zshrc ~/.zshrc.default
ln -s ${DOTFILES}/zshrc ~/.zshrc
echo "Installing oh-my-zsh and plugins finished!"
echo "You still need to add this to your ~/.bashrc: exec zsh"


echo "Install and configure tmux"
sudo apt install tmux
ln -s ${DOTFILES}/tmux.conf ~/.tmux.conf

echo "Install and configure neovim"
mkdir -p ~/bin
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage ~/bin
ln -sr ~/bin/nvim.appimage ~/bin/nvim

echo "Install neovim plug manager and plugins dependencies"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Install and configure code-insiders"
wget https://code.visualstudio.com/sha/download?build=insider&os=linux-deb-x64 ~/Downloads/vscode-insiders.deb
dpkg -i ~/Downloads/vscode-insiders.deb
#TODO vscode config


# Install other used tools
sudo apt install gitg
sudo apt install howdoi

