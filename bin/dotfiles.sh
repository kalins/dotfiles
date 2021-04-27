#!/bin/sh
dotfiles=(
aliases
zshenv
zshrc
nvimrc.bundles
nvimrc
vim
xprofile
Xresources
ctags
gitconfig
gitignore
)

nvimrcpath="~/.config/nvim/init.vim"
nvimpath="~/.config/nvimrc"

if [ ! -d "$HOME/.config/" ]; then
  mkdir "$HOME/.config"
fi

fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\n$fmt\n" "$@"
}

fancy_echo "Backup current config"
today=`date +%Y%m%d`
for i in ${dotfiles[@]} ; do
  if [ "nvimrc" == "$i" ]; then
    [ -e $nvimrcpath ] && [ ! -L $nvimrcpath ] && mv $nvimrcpath $nvimrcpath.bak.$today ;
    [ -L $nvimrcpath ] && unlink $nvimrcpath ;
  elif [ "vim" == "$i" ]; then
    [ -e ~$nvimpath ] && [ ! -L ~$nvimpath ] && mv ~$nvimpath ~$nvimpath.bak.$today ;
    [ -L ~$nvimpath ] && unlink ~$nvimpath ;
  else
    [ -e ~/.$i ] && [ ! -L ~/.$i ] && mv ~/.$i ~/.$i.bak.$today ;
    [ -L ~/.$i ] && unlink ~/.$i ;
  fi
done

for i in ${dotfiles[@]} ; do
  if [ "nvimrc" == "$i" ]; then
    ln -s ~/dotfiles/nvimrc $nvimrcpath
  elif [ "vim" == "$i" ]; then
    ln -s ~/.vim $nvimpath
  else
    ln -s ~/dotfiles/$i ~/.$i
  fi
done
