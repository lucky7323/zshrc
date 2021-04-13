### Locale {{{
  # You may need to manually set your language environment
  export LANG="en_US.UTF-8"
  export LANGUAGE=
  export LC_CTYPE="en_US.UTF-8"
  export LC_NUMERIC="en_US.UTF-8"
  export LC_TIME="en_US.UTF-8"
  export LC_COLLATE="C"
  export LC_MONETARY="ko_KR.UTF-8"
  export LC_MESSAGES="POSIX"
  export LC_PAPER="ko_KR.UTF-8"
  export LC_NAME="ko_KR.UTF-8"
  export LC_ADDRESS="ko_KR.UTF-8"
  export LC_TELEPHONE="ko_KR.UTF-8"
  export LC_MEASUREMENT="ko_KR.UTF-8"
  export LC_IDENTIFICATION="ko_KR.UTF-8"
### }}}


### PATH {{{
  if which go > /dev/null; then
    export GOPATH=$HOME/go
  fi
### }}}


### Git {{{
  export GPG_TTY=$(tty)
### }}}

