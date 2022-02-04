#
# Install local SDKs with via the official installer.
#
# Please notice: the installer adds `dotnet` binary to $PATH via /etc/path.d (/usr/libexec/path_helper utility).
#

export DOTNET_ROOT="$(dirname $(which dotnet))"

alias dotnet-package-version=nbgv
alias nuget-package-version=nbgv

# C# Interactive is a part of Visual Studio... (https://stackoverflow.com/questions/10980596/c-sharp-repl-outside-visual-studio)
# "mono-mdk-for-visual-studio" Brew package also has a REPL, "csharp", so aliasing it
#alias csharp=csi
