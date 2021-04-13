# ref: https://github.com/posquit0/zshrc

source $ZSH_HOME/zplug/init.zsh

### Plugin: Completions {{{
  # Additional completion definitions for Zsh
  zplug "zsh-users/zsh-completions", as:plugin
### }}}


### Plugin: Calc {{{
  # Support for basic math
  zplug "arzzen/calc.plugin.zsh"
### }}}


### Plugin: Fast Syntax Highlighting {{{
  # Fish shell-like syntax highlighting for Zsh
  # INFO: Alternative of `zsh-syntax-highlighting`
  zplug "zdharma/fast-syntax-highlighting", as:plugin, \
    defer:2, \
    hook-load:"config-zplug-fast-syntax-highlighting"

  function config-zplug-fast-syntax-highlighting() {
    fast-theme default -q
  }
### }}}


### Plugin: Python Auto Switch Virtualenv {{{
  # Automatically switch python virtualenvs as you move between directories
  # Commands: mkvenv, rmvenv
  zplug "MichaelAquilina/zsh-autoswitch-virtualenv"
### }}}


### Plugin: Git {{{
  zplug "plugins/git", from:oh-my-zsh
### }}}


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  else
    echo
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load
unfunction -m "config-zplug-*"
