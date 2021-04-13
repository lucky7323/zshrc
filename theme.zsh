export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"

source $ZSH/oh-my-zsh.sh

# Custom Powerlevel10k Configs
[[ ! -f $ZSH_HOME/p10k.zsh ]] || source $ZSH_HOME/p10k.zsh

