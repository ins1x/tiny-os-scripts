:: Find processes listening ports
netstat -aon | find /i "listening" |find "port"