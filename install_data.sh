#!/usr/bin/env bash


# Test data is hosted on Google Drive at:
# https://drive.google.com/file/d/175B2aDLQzQXYS3mKSFUQb3OF6F30it3U/view?usp=sharing

fileid=175B2aDLQzQXYS3mKSFUQb3OF6F30it3U

filename=test_nucleo_qc.tar.gz
foldername=test_nucleo_qc
pip install gdown
gdown https://drive.google.com/uc?id=$fileid 

# Suppress linux warnings for MacOS tar.gz files
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    tar --warning=no-unknown-keyword -xzvf $filename -C test_data/ 
elif [[ "$OSTYPE" == "darwin"* ]]; then
    tar -xzvf $filename -C test_data/
fi

rm $filename
