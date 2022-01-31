HISTFILE=$HOME/.zsh_history
HISTSIZE=2000
SAVEHIST=$HISTSIZE

setopt SHARE_HISTORY HIST_IGNORE_ALL_DUPS NOMATCH
unsetopt AUTO_CD BEEP EXTENDED_GLOB NOTIFY

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward

autoload -Uz compinit
compinit

PROMPT='%B%F{195}┌[%(!.%F{160}.%F{81})%n%F{195}@%F{78}%m%F{195}] %F{141}%~'$'\n''%F{195}└[%F{141}%(!.#.$)%F{195}]%k%b%f '

zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

stty stop undef
stty start undef
stty eof undef
