HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history

alias history='fc -il 1'

# history completition
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=green'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=red'
HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='i'
setopt HIST_FIND_NO_DUPS

