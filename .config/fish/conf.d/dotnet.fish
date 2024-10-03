# C# REPL
# See also: https://github.com/filipw/dotnet-script
#dotnet tool install -g csharprepl
#alias csharp='csharprepl'

# Find transitive package references that can be removed
# See: https://gsferreira.com/archive/2022/finding-dotnet-transitive-dependencies-and-tidying-up-your-project/
#dotnet tool install -g snitch

# Dependency tree
#dotnet tool install -g dotnet-depends

# NuGet versioning
#dotnet tool install -g GitVersion.Tool

# Transient deps resolver (like pipdeptree or `composer why`)
# See https://github.com/bjorkstromm/depends
#dotnet tool install -g dotnet-depends

alias dotnet-tools-upgrade-global='dotnet tool list -g | awk \'{ print $1 }\' | tail -n +3 | xargs -I TOOL sh -eux -c \'dotnet tool update -g TOOL;\''
# TODO Fix it somehow, it works in Terminal, but not as an alias!
alias dotnet-tools-upgrade='dotnet tool list --local | awk \'{ print $1 }\' | tail -n +3 | xargs -I TOOL sh -eux -c \'dotnet tool update TOOL --local;\''

alias dotnet-cleanup='find . -iname "bin" -o -iname "obj" -o -iname "TestResults" | xargs rm -rf'

# .NET and Fish mess up together, Fish does not expand "~/.dotnet/tools" that is in /etc/paths.d/dotnet-cli-tools
_fish_remove_path "~/.dotnet/tools"
fish_add_path -g $HOME/.dotnet/tools
