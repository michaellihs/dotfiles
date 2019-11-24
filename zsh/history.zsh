# HISTORY
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# bindkey '^R' zaw-history

zstyle ':filter-select:highlight' matched fg=green
zstyle ':filter-select' max-lines 7
zstyle ':filter-select' case-insensitive yes
zstyle ':filter-select' hist-find-no-dups yes
zstyle ':filter-select' extended-search yes