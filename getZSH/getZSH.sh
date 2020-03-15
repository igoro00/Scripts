sudo apt -y install zsh wget git
sh -c "$(wget -O- https://raw.githubusercontent.com/igoro00/Scripts/master/getZSH/install_ohmyzsh.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
cat "$(wget -O- https://raw.githubusercontent.com/igoro00/Scripts/master/getZSH/zshrc)" > ~/.zshrc
cat "$(wget -O- https://raw.githubusercontent.com/igoro00/Scripts/master/getZSH/p10k.zsh)" > ~/.p10k.zsh
exec zsh -l
