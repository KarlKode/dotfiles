if [[ -n $SSH_CONNECTION ]]; then
  export PS1='%m:%3~$(git_info_for_prompt)%# '
else
  export PS1='%3~$(git_info_for_prompt)%# '
fi

#export LSCOLORS="exfxcxdxbxegedabagacad"
#export CLICOLOR=true
export TERM=screen-256color
#only try to set the colors if the gdircolors executeable is available
command -v gdircolors > /dev/null 2>&1 && eval `gdircolors ~/.dircolors`

fpath=(~/.zsh/functions \
  ~/.zsh/site-functions \
  ~/.zsh/zsh-completions \
  $ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

setopt autocd
setopt autoparamslash
setopt no_bg_nice # don't nice background tasks
setopt no_hup
setopt local_options # allow functions to have local options
unsetopt local_traps # allow functions to have local traps
setopt prompt_subst
setopt correct
# setopt ignore_eof

#autoload -U promptinit && promptinit
#export PURE_GIT_UNTRACKED_DIRTY=0
#export PURE_GIT_DELAY_DIRTY_CHECK=1
#prompt pure
#prompt poor
#prompt paradox
#prompt agnoster

