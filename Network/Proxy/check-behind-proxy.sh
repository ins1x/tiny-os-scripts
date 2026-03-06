#!/bin/bash
set_proxies() {
    export http_proxy=http://proxy.example.com:998
    export HTTP_PROXY=${http_proxy}
    export https_proxy=http://proxy.example.com:999
    export HTTPS_PROXY=${https_proxy}
    export ftp_proxy=http://proxy.example.com:998
    export FTP_PROXY=${ftp_proxy}
    export socks_proxy=socks://proxy.example.com:9999
    export SOCKS_PROXY=${socks_proxy}
    export no_proxy=localhost,127.0.0.1,.docker.io,192.168.9.100
    export NO_PROXY=${no_proxy}        
    export ALL_PROXY_NO_FALLBACK=1
    export all_proxy=socks5://proxy.example.com:9999   
}

URL='www.google.com'

curl -s -m 2 $URL > /dev/null

if [ $? == 0 ] then
    STATUS="No Corporate Proxy"
else
    set_proxies
    STATUS="Behind Corporate proxy"
fi
echo $STATUS