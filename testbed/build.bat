rem Build Script for testbed
@echo off

setlocal EnableDelayedExpansion
set cFilenames=
for /r %%f in (*.c) do (
    set cFilenames=!cFilenames! %%f
)

rem echo "Files:" %cFilenames%

set assembly=testbed
set compilerFlags=-g
rem -Wall-Werror
set includeFlags=-Isrc -I../engine/src/
set linkerFlags=-L../bin -lengine.lib
set defines=-D_DEBUG -DKH_IMPORT

echo "Building %assembly%..."
clang %cFilenames% %compilerFlags% -o ../bin/%assembly%.exe %defines% %includeFlags% %linkerFlags%