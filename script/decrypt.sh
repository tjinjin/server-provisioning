#!/bin/bash

. ~/server-provisioning/env.sh

openssl rsautl -decrypt -inkey $SECRET_KEY -in $COMMON_KEY.encrypt -out $COMMON_KEY

openssl aes-256-cbc -d -in $FILE.encrypt -out $FILE -pass file:$COMMON_KEY
