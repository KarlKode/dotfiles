# Only execute this file if docker is available
command -v docker-machine > /dev/null 2>&1 || return;

# Cache docker output command until next reboot
docker_cache="$HOME/.cache/docker-init"
if [[ ! -e "$docker_cache" || -e `find "$docker_cache" -mmin +$cache_reboot` ]]; then
  docker-machine env dev >| "$docker_cache"
fi

# Load environment variables for the dev docker machine
source "$docker_cache"

unset docker_cache

