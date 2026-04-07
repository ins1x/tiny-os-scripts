:: Enabling DCTP optimization
:: Increase throughput on local, low-latency links if you have a LAN or gigabit connection.
netsh int tcp set supplemental Internet congestionprovider=dctcp > nul
netsh int tcp set heuristics disabled > nul