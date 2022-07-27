# https://github.com/gazorby/fish-exa/blob/master/functions/exa_git.fish
function exa_git -d "Use exa with its git option if in a git repo"
    if git rev-parse --is-inside-work-tree &> /dev/null
        exa --group --header --group-directories-first --long --git $argv
    else
        exa --group --header --group-directories-first --long $argv
    end
end

alias ll=exa_git
