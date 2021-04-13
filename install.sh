#! /bin/sh

git submodule update --init zplug
git submodule update --remote zplug

if [ ! -d ~/.oh-my-zsh/ ]; then
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

if [ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

if [ -f ~/.zshrc ]; then
  rm ~/.zshrc
fi
ln -s ~/.zsh/zshrc ~/.zshrc

if [ -f ~/.p10k.zsh ]; then
  rm ~/.p10k.zsh
fi
ln -s ~/.zsh/p10k.zsh ~/.p10k.zsh

echo "Installed Zshrc Configuration!"

