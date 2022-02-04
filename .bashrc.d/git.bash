alias g="git"
alias gs="git s"
alias gc="git c"
alias gp="git pull"

__git_complete g __git_main
__git_complete gp _git_pull
__git_complete gs _git_status
__git_complete gc _git_commit
