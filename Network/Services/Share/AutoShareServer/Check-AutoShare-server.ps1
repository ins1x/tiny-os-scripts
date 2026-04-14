# Check if admin shares are enabled (AutoShareServer/AutoShareWorkstaiton)
Get-SmbServerConfiguration | select AutoShareServer,AutoShareWorkstation