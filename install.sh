#! /bin/sh

git submodule update --init zplug
git submodule update --remote zplug

[ ! -d ~/.oh-my-zsh/ ] && \
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


[ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ] && \
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


[ -f ~/.zshrc ] && rm ~/.zshrc
ln -s ~/.zsh/zshrc ~/.zshrc

[ -f ~/.p10k.zsh ] && rm ~/.p10k.zsh
ln -s ~/.zsh/p10k.zsh ~/.p10k.zsh

echo "Installed Zshrc Configuration!"

