#!/bin/zsh

for f in .??*
do
    [[ "$f" == ".git" || "$f" == ".gitignore" ]] && continue

    echo "$f"
    rm -rf $HOME/$f
    ln -s $HOME/dotfiles/$f $HOME/$f
done

mkdir -p $HOME/dotfiles/nvim/backup 2>/dev/null
mkdir -p $HOME/.config 2>/dev/null
mkdir -p $HOME/.local/bin 2> /dev/null
mkdir -p $HOME/.local/share 2> /dev/null
mkdir -p $HOME/.ssh 2> /dev/null
cp -r $HOME/dotfiles/ssh/config $HOME/.ssh/config
ln -s $HOME/dotfiles/nvim $HOME/.config/nvim
ln -s $HOME/dotfiles/git $HOME/.config/git
ln -s $HOME/dotfiles/up.sh $HOME/.local/bin/up.sh
cp -r $HOME/dotfiles/autostart $HOME/.config/autostart
zcompile ${HOME}/.zshenv
zcompile ${HOME}/.zshrc
