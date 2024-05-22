#!/bin/bash

# This script will be called by Certbot to remove the DNS TXT record
# Replace these variables with your DNS provider's API details or use a manual approach

DOMAIN="_acme-challenge.${CERTBOT_DOMAIN}"

# Here you need to remove the DNS record manually or via your DNS provider's API
# Example using `nsupdate` (if supported by your DNS provider):
# nsupdate << EOF
# server your-dns-server
# update delete $DOMAIN TXT
# send
# EOF

# Pause to give time for DNS cleanup
echo "Please remove the following TXT record from your DNS zone:"
echo "_acme-challenge.${CERTBOT_DOMAIN} IN TXT ${CERTBOT_VALIDATION}"
echo "Press Enter to continue after the DNS record has been removed."
read -r
