#
# Install local SDKs with dotnet-install.sh... BUT better with the installer (dotnet-install.sh does not work properly 
# on M1 to install mixed architectures)
#
# Please notice: .NET installer adds global binary to $PATH via /etc/path.d and /usr/libexec/path_helper utility...
#
# dotnet-install.sh -c 3.1
# dotnet-install.sh -c 5.0
# ...
#


# Conflicts with the .NET installer method...
#export PATH="$PATH:$HOME/.dotnet"

# This one actually already exported to $PATH by the .NET installer
#export PATH="$PATH:$HOME/.dotnet/tools"

export DOTNET_ROOT="$(dirname $(which dotnet))"

alias dotnet-package-version=nbgv
alias nuget-package-version=nbgv

# C# Interactive is a part of Visual Studio... (https://stackoverflow.com/questions/10980596/c-sharp-repl-outside-visual-studio)
# "mono-mdk-for-visual-studio" Brew package also has a REPL, "csharp", so aliasing it
#alias csharp=csi
