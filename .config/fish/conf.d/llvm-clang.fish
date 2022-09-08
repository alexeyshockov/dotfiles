fish_add_path -g /opt/homebrew/opt/llvm/bin

set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib" $LDFLAGS
set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include" $CPPFLAGS
