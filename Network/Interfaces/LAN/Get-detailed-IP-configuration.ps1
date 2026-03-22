# Gets detailed IP configuration for all non-virtual, connected interfaces (equivalent to ipconfig in CMD)
Get-NetIPConfiguration -InterfaceAlias "Ethernet" -Detailed