command -v fasd > /dev/null 2>&1 || return

fasd_cache="$HOME/.cache/fasd-init"

if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
    fasd --init auto >| "$fasd_cache"
fi
source "$fasd_cache"

unset fasd_cache

