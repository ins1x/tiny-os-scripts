:: Enables Receive-Side Scaling (RSS) 
:: Using multiple processes to process the incoming stream, without RSS TCP/IP 
:: always works on only one processor, even if the PC is multi-processor.
netsh int tcp set global rss=enabled