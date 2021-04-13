# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH_HOME=$HOME/.zsh

### Theme Configuration
[ -f $ZSH_HOME/theme.zsh ] && source $ZSH_HOME/theme.zsh


### General Configuration
[ -f $ZSH_HOME/general.zsh ] && source $ZSH_HOME/general.zsh


### Alias Configuration
[ -f $ZSH_HOME/aliases.zsh ] && source $ZSH_HOME/aliases.zsh
[ -f $HOME/.alias ] && source $HOME/.alias


### Plugins Configuration
[ -f $ZSH_HOME/plugins.zsh ] && source $ZSH_HOME/plugins.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
