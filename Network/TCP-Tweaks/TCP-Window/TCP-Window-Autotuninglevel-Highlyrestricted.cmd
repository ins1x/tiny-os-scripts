:: Automatic tuning of the TCP receive window size
:: Allows the receiving window size to grow beyond the default value, with very limited increases;
netsh int tcp set global autotuninglevel=highlyrestricted