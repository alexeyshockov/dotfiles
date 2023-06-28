# C# REPL
# Install: dotnet tool install -g csharprepl
# Upgrade: dotnet tool update -g csharprepl
# See also: https://github.com/filipw/dotnet-script
#alias csharp='csharprepl'

# See: https://gsferreira.com/archive/2022/finding-dotnet-transitive-dependencies-and-tidying-up-your-project/
# Install: dotnet tool install -g snitch
# Upgrade: dotnet tool update -g snitch

# NuGet versioning:
#  dotnet tool install -g GitVersion.Tool
#  dotnet tool install -g nbgv
#alias dotnet-package-version='nbgv'
#alias nuget-package-version='nbgv'

alias dotnet-tools-upgrade-global="dotnet tool list -g | awk '{ print $1 }' | tail -n +3 | xargs -I TOOL sh -c 'dotnet tool update -g TOOL;'"
alias dotnet-tools-upgrade="dotnet tool list --local | awk '{ print $1 }' | tail -n +3 | xargs -I TOOL sh -c 'dotnet tool update --local TOOL;'"

alias dotnet-cleanup='find . -iname "bin" -o -iname "obj" -o -iname "TestResults" | xargs rm -rf'

# .NET and Fish mess up together, Fish does not expand "~/.dotnet/tools" that is in /etc/paths.d/dotnet-cli-tools
_fish_remove_path "~/.dotnet/tools"
fish_add_path -g $HOME/.dotnet/tools
