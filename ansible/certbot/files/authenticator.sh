#!/bin/bash

# This script will be called by Certbot to add a DNS TXT record
# Replace these variables with your DNS provider's API details or use a manual approach

DOMAIN="_acme-challenge.${CERTBOT_DOMAIN}"
VALUE="${CERTBOT_VALIDATION}"

# Here you need to add the DNS record manually or via your DNS provider's API
# Example using `nsupdate` (if supported by your DNS provider):
# nsupdate << EOF
# server your-dns-server
# update add $DOMAIN 300 TXT "$VALUE"
# send
# EOF

# Pause to give time for DNS propagation
echo "Please add the following TXT record to your DNS zone:"
echo "_acme-challenge.${CERTBOT_DOMAIN} IN TXT ${CERTBOT_VALIDATION}"
echo "Press Enter to continue after the DNS record has been added."
read -r
