@echo off

set flags=%*
set cwd=%~dp0

set install_dir=Bin\OpenSSL
set certs_dir=Bin\Certs
set libs_dir=Bin\Libs

set install_dir=%cwd%%install_dir%
set certs_dir=%cwd%%certs_dir%
set libs_dir=%cwd%%libs_dir%

perl Configure --prefix="%install_dir%" --openssldir="%certs_dir%" --libdir="%libs_dir%" %flags% 