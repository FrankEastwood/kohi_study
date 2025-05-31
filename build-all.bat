@echo off
rem Build Everything

echo "Building everything..."

pushd engine
call build.bat
popd
if %ERRORLEVEL% neq 0 (echo Error:%ERRORLEVEL% && exit)

pushd testbed
call build.bat
popd
if %ERRORLEVEL% neq 0 (echo Erro:%ERRORLEVEL && exit)

echo "All assembly built succeessfully"