# Logging in Event Viewer. Sometimes it's more convenient to view blocking activity 
# directly in the Windows Event Log: filtering, sorting, and quick searching are much more convenient than text analysis.
# After this, records of blockings will appear in: Event Viewer → Windows Logs → Security
Auditpol /set /category:"System" /SubCategory:"Filtering Platform Packet Drop" /failure:enable