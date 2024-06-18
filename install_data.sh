#!/usr/bin/env bash


# Test data is hosted on Google Drive at:
# https://drive.google.com/u/0/uc?id=1i1GA4AZhuw6Si8RmPFPJxmejIUt3ZZ1D

fileid=1i1GA4AZhuw6Si8RmPFPJxmejIUt3ZZ1D

filename=test_nucleo_qc.tar.gz
foldername=test_nucleo_qc

# Skip if already have test data
[[ -f $filename ]] && exit 0
[[ -d $foldername ]] && exit 0

curl -c ./cookie -s -k -L "https://drive.google.com/uc?export=download&id=$fileid" > /dev/null

curl -k -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

# Suppress linux warnings for MacOS tar.gz files
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    tar --warning=no-unknown-keyword -xzvf $filename
elif [[ "$OSTYPE" == "darwin"* ]]; then
    tar -xzvf $filename
fi

rm $filename