#!/bin/bash
export http_proxy='http://proxy.test.cz:1234/'
URL='www.google.com'

wget -q --proxy-user=test --proxy-password=test --spider $URL
if [ $? = 1 ]
then
    STATUS= echo "Proxy isn't working"

else
  STATUS="Proxy is working."
fi
echo $STATUS