#! /bin/sh

if [ -f ~/.zshrc ] ; then
  rm ~/.zshrc
fi
ln -s ~/.zsh/zshrc ~/.zshrc

echo "Installed Zshrc Configuration!"

