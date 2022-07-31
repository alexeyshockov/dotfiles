# Install: dotnet tool install -g nbgv
# Upgrade: dotnet tool update -g nbgv
alias dotnet-package-version='nbgv'
alias nuget-package-version='nbgv'

# Install: dotnet tool install -g csharprepl
# Upgrade: dotnet tool update -g csharprepl
# See also: https://github.com/filipw/dotnet-script
alias csharp='csharprepl'

alias dotnet-tool-upgrade-all="dotnet tool list -g | awk '{ print $1 }' | tail +3 | xargs -I % sh -c 'dotnet tool update -g %;'"

alias dotnet-cleanup='find . -iname "bin" -o -iname "obj" -o -iname "TestResults" | xargs rm -rf'
