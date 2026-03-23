:: Reset network components
netcfg -d >nul 2>&1
netsh winsock reset >nul 2>&1
netsh int 6to4 reset all >nul 2>&1
netsh int httpstunnel reset all >nul 2>&1
netsh int ip reset >nul 2>&1
netsh int ipv4 reset >nul 2>&1
netsh int ipv6 reset >nul 2>&1
netsh int isatap reset all >nul 2>&1
netsh int portproxy reset all >nul 2>&1
netsh int tcp reset all >nul 2>&1
netsh int teredo reset all >nul 2>&1
netsh branchcache reset >nul 2>&1