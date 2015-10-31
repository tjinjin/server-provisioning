#!/bin/bash

PUBLIC_KEY="pub.pem"
SECRET_KEY=~/.ssh/id_gcp-circleci
COMMON_KEY=".secret"
FILE="gcp_key.json"

openssl rsautl -decrypt -inkey $SECRET_KEY -in $COMMON_KEY.encrypt -out $COMMON_KEY

openssl aes-256-cbc -d -in $FILE.encrypt -out $FILE -pass file:$COMMON_KEY
