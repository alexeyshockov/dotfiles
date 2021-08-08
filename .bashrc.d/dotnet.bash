#
# Install local SDKs with dotnet-install.sh
#
# dotnet-install.sh -c 3.1
# dotnet-install.sh -c 5.0
# ...
#
export PATH="$PATH:/Users/alexeyshockov/.dotnet"
export PATH="$PATH:/Users/alexeyshockov/.dotnet/tools"

export DOTNET_ROOT="$(dirname $(which dotnet))"

alias dotnet-package-version=nbgv
alias nuget-package-version=nbgv

# C# Interactive is a part of Visual Studio... (https://stackoverflow.com/questions/10980596/c-sharp-repl-outside-visual-studio)
# "mono-mdk-for-visual-studio" Brew package also has a REPL, "csharp", so aliasing it
#alias csharp=csi
