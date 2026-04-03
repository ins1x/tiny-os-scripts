:: Disables diagnostics of your computer's RAM. (Windows 10) 
:: If there's something wrong with your RAM, diagnostics won't help.
schtasks /change /tn "Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" /disable
schtasks /change /tn "Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" /disable