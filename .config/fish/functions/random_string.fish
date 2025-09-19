function random_string --argument-names 'length' --description "Generate a random base58 string"
    [ -z "$length" ] && set length 16

    # Works only with GNU coreutils, not with uutils coreutils
    #cat /dev/urandom | tr -dc 'A-HJ-NP-Za-km-z2-9' | fold -w$length | head -n 1

    set generated_string $(openssl rand -base64 $(math "$length*2") | tr -dc 'A-HJ-NP-Za-km-z2-9' | head -c$length)
    echo $generated_string
end
