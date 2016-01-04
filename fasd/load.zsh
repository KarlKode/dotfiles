command -v fasd > /dev/null 2>&1 || return

fasd_cache="$HOME/.cache/fasd-init"

if [[ ! -e "$fasd_cache" ]]; then
    fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install >| "$fasd_cache"
fi
source "$fasd_cache"

unset fasd_cache

