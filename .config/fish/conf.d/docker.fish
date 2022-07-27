set -gx DOCKER_BUILDKIT 1
set -gx COMPOSE_DOCKER_CLI_BUILD 1

alias dc='docker-compose'
alias docker-cleanup-containers='docker rm $(docker ps -a -q -f "status=exited")'
alias docker-cleanup-images='docker rmi $(docker images -f "dangling=true" -q)'
