fish_add_path -g /opt/homebrew/opt/openssl/bin


# Solves `pip install grpcio` issue on ARM Macs... Not really.
# (See https://github.com/grpc/grpc/issues/25082#issuecomment-754565768 and https://stackoverflow.com/q/66640705/322079)
#set -gx GRPC_PYTHON_BUILD_SYSTEM_OPENSSL 1
#set -gx GRPC_PYTHON_BUILD_SYSTEM_ZLIB 1
#set -gx LDFLAGS "-L/opt/homebrew/opt/openssl/lib" "-L/opt/homebrew/opt/zlib/lib" $LDFLAGS
#set -gx CPPFLAGS "-I/opt/homebrew/opt/openssl/include" "-I/opt/homebrew/opt/zlib/include" $CPPFLAGS

# Just download a wheel from https://github.com/pietrodn/grpcio-mac-arm-build (see 
# https://github.com/grpc/grpc/issues/29262#issuecomment-1287661185).
