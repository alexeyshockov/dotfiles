# pyenv does not work with the system clang...
# "checking whether the C compiler works... no" it says. But with this one it's OK.
fish_add_path -g /opt/homebrew/opt/llvm/bin

# To use the bundled libc++ please add the following LDFLAGS:
set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++" $LDFLAGS

# For compilers to find llvm you may need to set:
set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib" $LDFLAGS
set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include" $CPPFLAGS
