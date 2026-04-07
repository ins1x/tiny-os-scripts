:: Enabling CTCP optimization
:: Improve throughput on higher latency or broadband connections
netsh int tcp set supplemental Internet congestionprovider=ctcp > nul
netsh int tcp set heuristics disabled > nul