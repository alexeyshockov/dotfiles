# https://github.com/gazorby/fish-exa/blob/master/functions/exa_git.fish
function eza_git -d "Use exa/eza with its Git option if in a Git repo"
    if git rev-parse --is-inside-work-tree &> /dev/null
        eza --group --header --group-directories-first --long --git $argv
    else
        eza --group --header --group-directories-first --long $argv
    end
end

alias ll=eza_git
