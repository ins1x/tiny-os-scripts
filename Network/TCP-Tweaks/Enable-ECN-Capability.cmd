:: Enable ECN Capability
:: ECN is a mechanism that provides routers with an alternative method for reporting network congestion. It is used to reduce packet retransmissions. 
netsh int tcp set global ecncapability=enabled > nul