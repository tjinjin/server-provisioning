#!/bin/bash

working=/home/ubuntu/server-provisioning/script
PUBLIC_KEY="$working/pub.pem"
SECRET_KEY=~/.ssh/id_gcp-circleci
COMMON_KEY="$working/.secret"
FILE="$working/gcp_key.json"

openssl rsautl -decrypt -inkey $SECRET_KEY -in $COMMON_KEY.encrypt -out $COMMON_KEY

openssl aes-256-cbc -d -in $FILE.encrypt -out $FILE -pass file:$COMMON_KEY
