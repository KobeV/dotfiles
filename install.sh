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
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# TODO: install plugins automatically or expect we do manual?

echo "Install and configure neovim"
mkdir -p ~/bin
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage ~/bin
ln -sr ~/bin/nvim.appimage ~/bin/nvim
# TODO symlink coc and nvimrc
echo "Start nvim and run :PlugInstall, restart nvim afterwards"


echo "Install and configure code-insiders"
wget https://code.visualstudio.com/sha/download?build=insider&os=linux-deb-x64 ~/Downloads/vscode-insiders.deb
dpkg -i ~/Downloads/vscode-insiders.deb
#TODO vscode config


# Install other used tools
sudo apt install gitg
sudo apt install howdoi
sudo apt install ranger
sudo apt install silversearcher-ag
sudo apt install ripgrep
sudo apt install clang-format
sudo apt install clang-tidy
sudo apt install ccpcheck
sudo apt install clang
sudo apt install flawfinder
sudo apt install shellcheck

pip install cmakelang
pip install autopep8
pip install pycodestyle
pip install pylint
pip install pydocstyle

sudo npm install -g fixjson
sudo npm install -g jsonlint
sudo npm install -g dockerfile_lint
