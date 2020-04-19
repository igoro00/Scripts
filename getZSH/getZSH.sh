#!/bin/sh
#Igor Ordecha 2020
#
#download and run this script to install zsh, oh-my-zsh, powerlevel10k with my config
#
if [ -x "$(command -v dnf)" ]; then dnf install zsh wget git sed; fi #not tested
if [ -x "$(command -v zypper)" ]; then zypper install zsh wget git sed; fi #not tested
if [ -x "$(command -v apt-get)" ]; then apt-get -y install zsh wget git sed; fi
if [ -x "$(command -v pacman)" ]; then pacman -S --noconfirm zsh wget git sed; fi
sh -c "$(wget -O- https://raw.githubusercontent.com/igoro00/Scripts/master/getZSH/ohmyzsh.sh)"
wget  https://raw.githubusercontent.com/igoro00/Scripts/master/getZSH/zshrc -O ~/.zshrc
sed -i -e 's|~|'$HOME'|g' ~/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/themes/powerlevel10k
wget  https://raw.githubusercontent.com/igoro00/Scripts/master/getZSH/p10k.zsh -O ~/.p10k.zsh
echo ""
echo ==========================
echo "Please download, install and set one of these fonts as your terminal font"
echo "  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
echo "  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
echo "  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
echo "  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"
echo ""
zsh
