# Connect to a Shared Printer (Print Server) 
# Add-Printer -ConnectionName "\\<PrintServerName>\<PrinterShareName>"
Add-PrinterPort -Name "IP_<PrinterIPAddress>" -PrinterHostAddress "<PrinterIPAddress>" -PortNumber 9112
