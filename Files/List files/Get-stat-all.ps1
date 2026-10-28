# Get statistics (metadata) for all files in the current directory
Get-ChildItem -Recurse -File | Select-Object Name, Length, LastWriteTime, CreationTime, Extension