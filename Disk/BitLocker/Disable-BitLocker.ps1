# Disable BitLocker for all drives 
$BLV = Get-BitLockerVolume  
Disable-BitLocker -MountPoint $BLV 
# Disable-BitLocker -MountPoint "X:" 
# Disable BitLocker for a drive