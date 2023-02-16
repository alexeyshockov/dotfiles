# pyenv does not work the system clang...
# "checking whether the C compiler works... no" it says. But with this one it's OK.
fish_add_path -g /opt/homebrew/opt/llvm/bin

set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib" $LDFLAGS
set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include" $CPPFLAGS
