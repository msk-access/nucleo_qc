#!/usr/bin/env bash


# Test data is hosted on Google Drive at:
# https://drive.google.com/drive/folders/1RPVfKqUccvNscab19J3Da3qgPrEcK7G0?usp=sharing

fileid=1RPVfKqUccvNscab19J3Da3qgPrEcK7G0

filename=test_nucleo_qc.tar.gz
foldername=test_nucleo_qc
gdown https://drive.google.com/uc?id=$fileid 

# Suppress linux warnings for MacOS tar.gz files
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    tar --warning=no-unknown-keyword -xzvf $filename -C tests/inputs/
elif [[ "$OSTYPE" == "darwin"* ]]; then
    tar -xzvf $filename -C tests/inputs/
fi

rm $filename
