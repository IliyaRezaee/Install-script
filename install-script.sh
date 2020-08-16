sudo apt-get update
sudo apt-get upgrade
sudo apt install git
sudo apt install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/IliyaRezaee/vim-config.git /tmp
cp /tmp/vim-config/vimrc.txt ~/.vimrc
sudo apt install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo chsh -s /usr/bin/zsh
#########################
sudo apt install jcal
