sudo apt -y install zsh wget git sed
sh -c "$(wget -O- https://raw.githubusercontent.com/igoro00/Scripts/master/getZSH/ohmyzsh.sh)"
wget  https://raw.githubusercontent.com/igoro00/Scripts/master/getZSH/zshrc -O ~/.zshrc
sed -i -e 's|~|'$HOME'|g' ~/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/themes/powerlevel10k
wget  https://raw.githubusercontent.com/igoro00/Scripts/master/getZSH/p10k.zsh -O ~/.p10k.zsh
zsh
