# Only execute this file if docker is available
command -v docker-machine > /dev/null 2>&1 || return;

# Load environment variables for the dev docker machine
eval "$(docker-machine env dev)"
