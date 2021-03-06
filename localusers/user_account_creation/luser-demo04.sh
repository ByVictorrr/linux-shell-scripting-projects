#!/bin/bash

# This script creates an account on the local system
# You will be prompted for the account name and password

# Procedure

## Ask for the user name
read -p 'Enter the username to create: ' USER_NAME
## Ask for the real name
read -p 'Enter the name of the person who this account is for: ' COMMENT
## Ask for the password
read -p 'Enter the password to user for the account: ' PASSWORD
## Create the user.
useradd -c "${COMMENT}" -m "${USER_NAME}"
echo "${PASSWORD}" | passwd --stdin "${USER_NAME}"
## set the password for the user.
passwd -e "${USER_NAME}"

## Force password change on first login
