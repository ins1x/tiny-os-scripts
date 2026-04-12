#!/bin/sh
# Show the SSL certificate of a domain
openssl s_client -showcerts -connect www.example.net:443
