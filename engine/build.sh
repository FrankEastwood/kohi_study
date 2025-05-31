#!/bin/bash

# Stop on error
set -e

# Collect all .c files recursively
cFilenames=$(find . -name "*.c")

# Assembly name
assembly="engine"

# Compiler and linker flags
compilerFlags="-g -shared -Wall -Werror"
includeFlags="-Isrc -I$VULKAN_SDK/Include"
linkerFlags="-luser32 -lvulkan-1 -L$VULKAN_SDK/Lib"
defines="-D_DEBUG -DKEXPORT -D_CTR_SECURE_NO_WARNINGS"

echo "Building $assembly..."

# Compile
clang $cFilenames $compilerFlags -o ../bin/$assembly.dll $defines $includeFlags $linkerFlags
