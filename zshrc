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


### Custom Powerlevel10k Configuration
[[ ! -f $ZSH_HOME/p10k.zsh ]] || source $ZSH_HOME/p10k.zsh

