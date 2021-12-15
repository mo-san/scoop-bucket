#!/bin/bash
openssl aes-256-cbc -pbkdf2 -e -in .ssh/id_rsa -out .ssh/id_rsa.cipher -k "${KEY}"
