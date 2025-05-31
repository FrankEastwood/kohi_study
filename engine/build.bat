rem build script for engine
@echo off
setlocal EnableDelayedExpansion

rem Get a list of all the .c files.
set cFilenames=
for /r %%f in (*.c) do (
    set cFilenames=!cFilenames! %%f
)

rem echo "Files: " %cFilenames%

set assembly=engine
set compilerFlags=-g -shared -Wvarargs -Wall -Werror
rem -Wall -Werror
set includeFlags=-Isrc -I%VULKAN_SDK%/Include
set linkerFlags=-luser32 -lvulkan-1 -L%VULKAN_SDK%/Lib
set defines=-D_DEBUG -DKH_EXPORT -D_CTR_SECURE_NO_WARNINGS

echo "Buildings %assembly%..."
clang %cFilenames% %compilerFlags% -o ../bin/%assembly%.dll %defines% %includeFlags% %linkerFlags%
