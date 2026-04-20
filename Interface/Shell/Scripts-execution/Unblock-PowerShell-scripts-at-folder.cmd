:: all scripts within this folder should now run without security prompt
powershell "ls -Recurse *.ps1 | Unblock-File"
powershell "ls -Recurse *.psm1 | Unblock-File"