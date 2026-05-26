# Show the total count, average, and maximum file size in a curent folder
Get-ChildItem -File | Measure-Object -Property Length -Sum -Average -Maximum
