@echo off

set flags=no-shared
set flags=%flags% %*
set cwd=%~dp0

set bin_dir=Bin

set install_dir=%bin_dir%/bin
set certs_dir=%bin_dir%/misc
set libs_dir=%bin_dir%/lib

set install_dir=%cwd%%install_dir%
set certs_dir=%cwd%%certs_dir%
set libs_dir=%cwd%%libs_dir%

if not exist "%bin_dir%" mkdir "%bin_dir%"

perl Configure --prefix="%install_dir%" --openssldir="%certs_dir%" %flags% 