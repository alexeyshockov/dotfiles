# See https://fishshell.com/docs/current/cmds/function.html#example
function mkcdir -d "Create a directory and set CWD"
    mkdir $argv
    if [ $status = 0 ]
        switch $argv[(count $argv)]
            case '-*'

            case '*'
                cd $argv[(count $argv)]

                return
        end
    end
end
