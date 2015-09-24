if [[ -n $SSH_CONNECTION ]]; then
  export PS1='%m:%3~$(git_info_for_prompt)%# '
else
  export PS1='%3~$(git_info_for_prompt)%# '
fi

#export LSCOLORS="exfxcxdxbxegedabagacad"
#export CLICOLOR=true
export TERM=screen-256color
eval `gdircolors ~/.dircolors`

fpath=(/usr/local/share/zsh/functions \
  /usr/local/share/zsh/site-functions \
  /usr/local/share/zsh-completions \
  $ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

setopt autoparamslash
setopt no_bg_nice # don't nice background tasks
setopt no_hup
setopt local_options # allow functions to have local options
setopt local_traps # allow functions to have local traps
setopt prompt_subst
setopt correct
# setopt ignore_eof

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char

autoload -U promptinit && promptinit
#export PURE_GIT_UNTRACKED_DIRTY=0
#export PURE_GIT_DELAY_DIRTY_CHECK=1
#prompt pure
prompt poor
#prompt paradox
#prompt agnoster

