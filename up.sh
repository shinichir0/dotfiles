#!/usr/bin/zsh

# update dotfiles
sudo echo "dotfiles update==========================================="
cd ${HOME}/dotfiles && git pull && cd ${HOME}

# update ubuntu packages
echo "ubuntu packages update========================================="
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

# update snap packages
echo "snap packages update==========================================="
sudo snap refresh

# update atom packages
echo "atom packages update==========================================="
apm upgrade
apm list -bi --no-dev > $HOME/dotfiles/app/Apmfile

# update texlive packages
echo "texlive packages update========================================"
sudo tlmgr update --self --all

# update anyenv
echo "anyenv update=================================================="
anyenv update
pyenv rehash
goenv rehash
rbenv rehash
ndenv rehash

# update pip packages
echo "pip packages update============================================"
pip install --upgrade pip
pip list --outdated --format=columns | awk '{print $1}' | tail -n +3 | xargs pip install -U 2>/dev/null || echo "pip: No Packages to Update"
pip check

# update gem packages
# echo "gem packages update============================================"
# gem update --system
# gem update `gem list | cut -d ' ' -f 1`

# update npm packages
echo "npm packages update============================================"
npm update -g npm
npm update -g

# update go packages
#echo "go packages update============================================="
#go get -u github.com/golang/dep/cmd/dep
#go get -u golang.org/x/tools/cmd/goimports
#go get -u golang.org/x/lint/golint
#go get -u github.com/kisielk/errcheck
#go get -u github.com/derekparker/delve/cmd/dlv
#go get -u github.com/nsf/gocode
#go get -u github.com/rogpeppe/godef

# update nimble packages
echo "nimble packages update========================================="
choosenim update self
choosenim update stable
nimble refresh
