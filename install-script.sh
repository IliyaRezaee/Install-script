sudo apt-get update
sudo apt-get upgrade
sudo apt install git
sudo apt install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc.txt ~/.vimrc
sudo apt install zsh
sudo chsh -s /usr/bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#########################
sudo apt install jcal
