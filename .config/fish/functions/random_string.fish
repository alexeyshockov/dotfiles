function random_string --argument-names 'length' --description "Generate a random string"
    [ -z "$length" ] && set length 16

    cat /dev/urandom | gtr -dc 'A-HJ-NP-Za-km-z2-9' | fold -w$length | head -n 1
end
