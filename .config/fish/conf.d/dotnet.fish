# C# REPL
# See also: https://github.com/filipw/dotnet-script
#alias csharp='csharprepl'

# TODO Fix it somehow, it works in Terminal, but not as an alias!
alias dotnet-tools-upgrade='dotnet tool list --local | awk \'{ print $1 }\' | tail -n +3 | xargs -I TOOL sh -eux -c \'dotnet tool update TOOL --local;\''

alias dotnet-cleanup='find . -iname "bin" -o -iname "obj" -o -iname "TestResults" | xargs rm -rf'

# .NET and Fish mess up together, Fish does not expand "~/.dotnet/tools" that is in /etc/paths.d/dotnet-cli-tools
_fish_remove_path "~/.dotnet/tools"
fish_add_path -g "$HOME/.dotnet/tools"
