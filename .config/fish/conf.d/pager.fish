if has less
    set -gx PAGER $(which less)
    set -gx LESS SR
end

if has pspg
    # For Postgres 11 and newer
    set -gx PSQL_PAGER pspg
end
