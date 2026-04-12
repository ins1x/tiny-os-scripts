# Show BIOS versions on local system 
Get-WMIobject win32_bios | Select-Object pscomputername,name 