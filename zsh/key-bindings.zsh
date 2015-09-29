zmodload zsh/terminfo

bindkey -e

vim_ins_mode="[INS]"
vim_cmd_mode="[CMD]"
vim_mode=$vim_ins_mode

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  zle reset-prompt
}
#zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
}
#zle -N zle-line-finish

bindkey '^r' history-incremental-search-backward
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char


# Make sure that the terminal is in application mode when zle is active, since
# only then values from $terminfo are valid
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
  function zle-line-init() {
    echoti smkx
  }
  function zle-line-finish() {
    echoti rmkx
  }
  zle -N zle-line-init
  zle -N zle-line-finish
fi

# up/down arrow keys
#bindkey "$terminfo[kcuu1]" up-line-or-history
#bindkey "$terminfo[kcud1]" up-line-or-history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' up-line-or-history
bindkey -M emacs '^N' down-line-or-history

# bind k and j for VI mode
bindkey -M vicmd 'k' up-line-or-history
bindkey -M vicmd 'j' down-line-or-history

bindkey ' ' magic-space

# Ctrl-Tab
bindkey "${terminfo[kcbt]}" reverse-menu-complete

# Home/End keys
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}"  end-of-line

