#!/usr/bin/env bash


# Test data is hosted on Google Drive at:
# https://drive.google.com/u/0/uc?id=1i1GA4AZhuw6Si8RmPFPJxmejIUt3ZZ1D

filename=test_nucleo_qc.tar.gz
# Note: Drive seems to change somewhat frequently how it handles endpoints for large files 
# add confirm parameter to link for this to work 
# previously used another wget scheme and gdown
wget -O $filename  "https://drive.google.com/u/0/uc?id=1i1GA4AZhuw6Si8RmPFPJxmejIUt3ZZ1D&export=download&confirm=t"
# Suppress linux warnings for MacOS tar.gz files
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    tar --warning=no-unknown-keyword -xzvf $filename -C tests/inputs/
elif [[ "$OSTYPE" == "darwin"* ]]; then
    tar -xzvf $filename -C tests/inputs/
fi
rm $filename