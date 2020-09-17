echo "=============Start updating repository...============="
sudo apt-get update
sudo apt-get upgrade -y
echo "=============End of updating repository============="

echo "=============Start installing 'git'...============="
sudo apt install git -y
echo "=============End of installing 'git'...============="

echo "=============Start installing and configuration of 'vim'...============="
sudo apt install vim -y
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc.txt ~/.vimrc

echo "You have to run vim ~/.vimrc and write :PluginInstall "
echo -n "Are you did all works above? [Y/n] "
read -r v;
if [[ "$v" == "y" ]]; then
	echo "Installing YouCompleteMe"
	sudo apt install build-essential cmake vim python3-dev
	cd ~/.vim/bundle/YouCompleteMe
	python3 install.py --all
else
	echo "exit installation"
	exit 1;
fi

echo "=============End of installing and configuration of 'vim'...============="

echo "=============Start installing and configuration of 'zsh'...============="
sudo apt install zsh -y
sudo chsh -s /usr/bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "=============End of installing and configuration of 'zsh'...============="

echo "=============Installing others============="
echo "Installing jcal"
sudo apt install jcal
echo "Installing screenfetch"
sudo apt install screenfetch
echo "Installing theme..."
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt install numix-blue-gtk-theme numix-gtk-theme numix-icon-theme-circle numix-icon-theme
git clone https://github.com/vinceliuice/Canta-theme.git
sudo cp -r ~/Downloads/Canta-theme /usr/share/icons
sudo ./install.sh
echo "Installing net-tools"
sudo apt install curl
sudo apt install net-tools
echo "Done!"
