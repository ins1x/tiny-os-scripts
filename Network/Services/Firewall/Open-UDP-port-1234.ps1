# Example open UDP port 1234
New-NetFirewallRule -Name 'rule_name' -DisplayName 'rule_name' -Enabled True -Direction Inbound -Protocol UDP -Action Allow -LocalPort 1234