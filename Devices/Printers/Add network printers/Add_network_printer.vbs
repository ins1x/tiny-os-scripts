Set WshNetwork = CreateObject("WScript.Network")
WshNetwork.AddWindowsPrinterConnection "\\Server1\HP1220A"
WshNetwork.SetDefaultPrinter "\\Server1\HP1220A"