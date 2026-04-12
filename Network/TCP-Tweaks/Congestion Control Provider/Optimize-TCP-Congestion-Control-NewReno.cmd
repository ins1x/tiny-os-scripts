:: Enabling NewReno optimization
:: NewReno is similar to CTCP, but also uses additional Fast Retransmit & Fast Recovery algorithms.
netsh int tcp set supplemental Internet congestionprovider=NewReno > nul
netsh int tcp set heuristics disabled > nul