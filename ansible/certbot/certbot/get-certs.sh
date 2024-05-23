#!/bin/bash

set -e

EMAIL="szymon.mytych@protonmail.com"
DOMAINS="*.spiraweb.pl"

# Run Certbot with manual DNS challenge
certbot certonly --manual --preferred-challenges=dns --email "$EMAIL" --agree-tos --manual-public-ip-logging-ok --domain "$DOMAINS"

# Provide instructions for manual DNS update
echo "Please log in to your DNS provider and create a TXT record for the domain(s) listed above."
echo "The TXT record should be named _acme-challenge.<your_domain> and should contain the value provided by Certbot."
echo "After creating the TXT record, wait for DNS propagation (this may take a few minutes) and then press Enter to continue."

read -r  # Wait for user input

# Continue Certbot process
certbot renew
