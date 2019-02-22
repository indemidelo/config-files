# config-files
Configuration files

# fresh install
```
cd ~
mkdir ~/.dotfiles
sudo apt install git
git init
git clone https://github.com/indemidelo/config-files ~/.dotfiles

ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
sudo apt-get install zsh
sudo apt-get install tmux
```

# getting ready for vim
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
python ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
```

# zsh
```
sudo apt-get install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

# powerline fonts
```
sudo apt-get install python3-pip
pip3 install --upgrade pip
```
Potrebbe essere necessario disinstallare pip con ```python3 -m pip uninstall pip```
```
pip3 install --user powerline-status
mkdir ~/.fonts
cd ~/.fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
fc-cache -vf ~/.local/share/fonts/
mkdir -p ~/.config/fontconfig/conf.d
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
```

# sistemare folder nei file . per configurare powerline

# sistemare fonts powerline
```
sudo apt-get install fonts-powerline
```

# sources
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

https://github.com/Valloric/YouCompleteMe

https://github.com/robbyrussell/oh-my-zsh

https://powerline.readthedocs.io/en/latest/installation/linux.html

# provare
https://gist.github.com/Tset-Noitamotua/284a00212aa8a8d23e202c73526f6e9b#file-vimrc

https://github.com/powerline/fonts
