#!/bin/bash

flags=$*

bin_dir="Bin"

install_dir="$bin_dir/bin"
certs_dir="$bin_dir/misc"
libs_dir="$bin_dir/lib"

install_dir="$PWD$install_dir"
certs_dir="$PWD$certs_dir"
libs_dir="$PWD$libs_dir"

echo "./Configure --prefix=$install_dir --openssldir=$certs_dir --libdir=$libs_dir $flags"