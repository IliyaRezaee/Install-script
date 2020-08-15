sudo apt-get update
sudo apt-get upgrade
sudo apt install git
sudo apt install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/IliyaRezaee/vim-config.git /tmp
cp /tmp/vim-config/vimrc.txt ~/.vimrc
sudo apt install xfce4-terminal
sudo apt install zsh
sudo chsh -s /usr/bin/zsh
