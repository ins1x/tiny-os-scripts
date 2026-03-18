#!/bin/sh
# Script checks for a connection (rather than waiting for openssl to time out) 
# and then makes the SSL handshake, keying on the verification phase. 
# It silently exits ("true") if the verification was "OK" or else exits with an error ("false"), then we report the finding.
test=google.com
if nc -zw1 $test 443 && echo |openssl s_client -connect $test:443 2>&1 |awk '
  $1 == "SSL" && $2 == "handshake" { handshake = 1 }
  handshake && $1 == "Verification:" { ok = $2; exit }
  END { exit ok != "OK" }'
then
  echo "we have connectivity"
fi