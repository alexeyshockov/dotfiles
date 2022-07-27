# https://www.stefaanlippens.net/pretty-csv.html
function pretty_csv --argument-names 'file'
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' $file | column -t -s, | less  -F -S -X -K
end
