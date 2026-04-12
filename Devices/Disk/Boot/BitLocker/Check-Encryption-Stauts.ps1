# Check Encryption Status of drives on Windows
Get-BitlockerVolume C: | Select -expand "VolumeStatus"