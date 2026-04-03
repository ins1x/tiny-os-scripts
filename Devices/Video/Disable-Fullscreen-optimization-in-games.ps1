# Disable Fullscreen optimization in games, fixes fullscreen flickering with some display adapters.
New-PSDrive HKU Registry HKEY_USERS
Set-Itemproperty -path "HKU:\*\System\GameConfigStore" -Name "GameDVR_FSEBehavior" -Value 2
Set-Itemproperty -path "HKU:\*\System\GameConfigStore" -Name "GameDVR_FSEBehaviorMode" -Value 2
Set-Itemproperty -path "HKU:\*\System\GameConfigStore" -Name "GameDVR_HonorUserFSEBehaviorMode" -Value 2
Remove-PSDrive -Name "HKU"