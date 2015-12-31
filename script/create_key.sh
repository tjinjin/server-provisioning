#!/bin/bash

. ./env.sh

openssl rsa -in $SECRET_KEY -pubout -out pub.pem
