#!/bin/sh
# Print the TLS (HTTPS) certificate for a domain as human readable text 
openssl s_client -tls1_2 -connect duckduckgo.com:443 < /dev/null 2> /dev/null | openssl x509 -text