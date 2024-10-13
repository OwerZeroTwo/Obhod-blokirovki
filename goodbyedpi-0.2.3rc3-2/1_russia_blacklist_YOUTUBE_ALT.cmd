@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)
PUSHD "%_arch%"

start "" goodbyedpi.exe -5 -e1 -q --fake-gen 29 --fake-from-hex 4a70e1f741f342a95128408806715bfac83eb9ed6d9757a9f74aaba823e914e7fb89bfbfeb2dff3fb998800f1b757858a08d0976903bc3e0d507 --blacklist ..\russia-blacklist.txt --blacklist ..\russia-youtube.txt

POPD
POPD
