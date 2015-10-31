#!/bin/bash

. ./env.sh

openssl aes-256-cbc -e -in $FILE -out $FILE.encrypt -pass file:$COMMON_KEY

openssl rsautl -encrypt -pubin -inkey $PUBLIC_KEY -in $COMMON_KEY -out $COMMON_KEY.encrypt
#openssl smime -encrypt -pubin -inkey $PUBLIC_KEY -in $FILE -out $FILE.encrypt $SECRET_KEY
