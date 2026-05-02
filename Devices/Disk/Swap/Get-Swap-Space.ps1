# Returns swap (pagefile) usage 
# Alternative variant: systeminfo | find "Virtual Memory"
$colItems = get-wmiobject -class "Win32_PageFileUsage" -namespace "root\CIMV2" -computername localhost 
 
foreach ($objItem in $colItems) { 
      $allocate = $objItem.AllocatedBaseSize
      $current = $objItem.CurrentUsage
} 
write-host ($allocate - $current)