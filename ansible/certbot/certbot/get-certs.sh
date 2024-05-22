#!/usr/bin/env bash

set -x

# Define your email and domains
EMAIL="szymon.mytych@protonmail.com"
DOMAINS="*.spiraweb.pl"

# Run Certbot with manual DNS challenge
certbot certonly \
    --manual \
    --preferred-challenges=dns \
    --email "$EMAIL" \
    --agree-tos \
    --manual-public-ip-logging-ok \
    --domain "$DOMAINS" \
    --manual-auth-hook authenticator.sh \
    --manual-cleanup-hook cleanup.sh

# Note: Replace /path/to/your/authenticator.sh and /path/to/your/cleanup.sh 
# with the paths to your scripts for handling the DNS challenge
