#!/bin/bash

flags=$*

install_dir="Bin/OpenSSL"
certs_dir="Bin/Certs"
libs_dir="Bin/Libs"

install_dir="$PWD$install_dir"
certs_dir="$PWD$certs_dir"
libs_dir="$PWD$libs_dir"

echo "./Configure --prefix=$install_dir --openssldir=$certs_dir --libdir$libs_dir $flags"