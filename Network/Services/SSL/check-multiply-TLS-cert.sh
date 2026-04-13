#!/bin/sh
# Check the certificate for a given hostname if the domain has multiple TLS hosts
openssl s_client -tls1_2 -connect duckduckgo.com:443 -servername duckduckgo.com < /dev/null 2> /dev/null | openssl x509 -text