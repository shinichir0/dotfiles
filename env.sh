# apt packages
# necessary packages
sudo apt install zsh neovim tmux xsel git tree curl wget source-highlight ctags global \
    software-properties-common unixodbc-dev clamtk papirus-icon-theme calibre snapd
# build packages
sudo apt install checkinstall make build-essential llvm 
# gnome utility packages
sudo apt install exfat-utils exfat-fuse ntfs-3g gnome-disk-utility gparted
# font packages
sudo apt install fonts-noto-cjk-extra fonts-noto-color-emoji fonts-noto-mono fonts-font-awesome
# conky packages
sudo apt install hddtemp lm-sensors
# google drive packages
sudo add-apt-repository ppa:alessandro-strada/ppa
mkdir ~/GoogleDrive
sudo apt install google-drive-ocamlfuse

# pyenv requirements
sudo apt install -y libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libncurses5-dev libncursesw5-dev xz-utils tk-dev
# programming language
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
cd ~/ && curl -L git.io/nodebrew | perl - setup
cd ~/ && curl https://nim-lang.org/choosenim/init.sh -sSf | sh
source ~/.zshenv
pyenv install 3.6.5
pyenv install 2.7.15
pyenv global 3.6.5 2.7.15
rbenv install 2.5.1
rbenv global 2.5.1
nodebrew install-binary v10.4.1
nodebrew use v10.4.1
source ~/.zshenv
source ~/.zshrc

~/dotfiles/trash-cli_build.sh
~/dotfiles/git-secrets_build.sh
pip install Pygments

# neovim
pip install neovim
gem install neovim
npm install -g neovim

# terminal
cd ~/
## one dark
wget https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh && chmod 744 one-dark.sh && ./one-dark.sh && rm one-dark.sh
## powerline font
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. & rm -rf fonts
## zplug
git clone https://github.com/zplug/zplug $ZPLUG_HOME
## tmux plugins
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
## fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
## font
fc-cache -vf

source ~/.zshrc

google-drive-ocamlfuse
