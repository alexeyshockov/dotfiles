alias dc='docker-compose'
alias docker-cleanup-containers='docker rm $(docker ps -a -q -f "status=exited")'
alias docker-cleanup-images='docker rmi $(docker images -f "dangling=true" -q)'
alias docker-all-images="docker images --all --format '{{.Size}}\t{{.Repository}}:{{.Tag}}\t{{.ID}}' | sort -h -r | column -t"

# No, I want to type "docker buildx build ..." explicitly
#set -gx DOCKER_BUILDKIT 1

# Enable BuildKit for Docker Compose (enabled by default in v2?..)
#set -gx COMPOSE_DOCKER_CLI_BUILD 1
