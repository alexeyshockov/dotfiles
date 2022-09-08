fish_add_path -g /opt/homebrew/opt/openssl/bin

set -gx LDFLAGS "-L/opt/homebrew/opt/openssl/lib" "-L/opt/homebrew/opt/zlib/lib" $LDFLAGS
set -gx CPPFLAGS "-I/opt/homebrew/opt/openssl/include" "-I/opt/homebrew/opt/zlib/include" $CPPFLAGS

# Solves `pip install grpcio` issue on ARM Macs
# See https://github.com/grpc/grpc/issues/25082#issuecomment-754565768
# See https://stackoverflow.com/q/66640705/322079
set -gx GRPC_PYTHON_BUILD_SYSTEM_OPENSSL 1
set -gx GRPC_PYTHON_BUILD_SYSTEM_ZLIB 1
