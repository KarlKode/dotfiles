zmodload zsh/terminfo

bindkey -e

# ctrl r
bindkey '^r' history-incremental-search-backward

# delete
bindkey "${terminfo[kdch1]}" delete-char

# up/down arrow keys
bindkey "${terminfo[kcuu1]}" history-substring-search-up
bindkey "${terminfo[kcud1]}" history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

bindkey ' ' magic-space

# ctrl-tab
bindkey "${terminfo[kcbt]}" reverse-menu-complete

# home/end (fn-left arrow/fn-right arrow) keys
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}"  end-of-line

