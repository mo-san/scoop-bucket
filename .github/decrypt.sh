#!/bin/bash
openssl aes-256-cbc --pbkdf2 -d -in .github/.ssh/id_rsa-cipher -k ${KEY} >> .github/.ssh/id_rsa
