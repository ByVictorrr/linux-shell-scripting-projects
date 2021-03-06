#!/bin/bash

# This script generates a list of random passwords.

# A random number as a password.
PASSWORD="${RANDOM}"
echo "${PASSWORD}"

# three random numbers together.
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"


# Use the current date/time as the basis for the password
PASSWORD="$(date +%s)"
echo "${PASSWORD}"


# Use the nanoseconds to act as randomization.
PASSWORD="$(date +%s%N)"
echo "${PASSWORD}"

# Use abetter password.
PASSWORD="$(date +%s%N | sha256sum | head -c 32)"
echo "${PASSWORD}"

# An even better password.
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c48)
echo "${PASSWORD}"

# Append a special character to the password.
SPECIAL_CHARACTER=$(echo '!@#$^&*()_-+=' | fold -w1 | shuf | head -c 1)
#echo "${SPECIAL_CHARACTER}"
echo "${PASSWORD}${SPECIAL_CHARACTER}"

