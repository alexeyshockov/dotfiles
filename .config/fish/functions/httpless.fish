# httpless example.org
function httpless --description "Pretty HTTPie piped to less"
    xh --pretty=all --print=hb $argv | less -R
end
