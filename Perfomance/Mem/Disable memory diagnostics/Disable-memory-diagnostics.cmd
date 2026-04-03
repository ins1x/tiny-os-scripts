:: Disables diagnostics of your computer's RAM. (Windows 7) 
:: If there's something wrong with your RAM, diagnostics won't help.
schtasks /change /tn "Microsoft\Windows\MemoryDiagnostic\CorruptionDetector" /disable
schtasks /change /tn "Microsoft\Windows\MemoryDiagnostic\DecompressionFailureDetector" /disable