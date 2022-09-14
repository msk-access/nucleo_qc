#!/usr/bin/env bash


# Test data is hosted on Google Drive at:
# https://drive.google.com/file/d/1crIalUNjs7Od9RCLEdNLDjCuWhh1C473/view?usp=sharing

fileid=1crIalUNjs7Od9RCLEdNLDjCuWhh1C473

filename=test_nucleo_qc.tar.gz
foldername=test_nucleo_qc
pip install gdown
gdown https://drive.google.com/uc?id=$fileid 

# Suppress linux warnings for MacOS tar.gz files
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    tar --warning=no-unknown-keyword -xzvf $filename 
elif [[ "$OSTYPE" == "darwin"* ]]; then
    tar -xzvf $filename 
fi

rm $filename
