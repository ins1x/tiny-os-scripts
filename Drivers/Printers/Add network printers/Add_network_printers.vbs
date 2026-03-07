Set WshNetwork = CreateObject("WScript.Network")

WshNetwork.AddWindowsPrinterConnection "\\Server1\HP1220A"
WshNetwork.AddWindowsPrinterConnection "\\Server1\HP500_42_A0"
WshNetwork.AddWindowsPrinterConnection "\\Server1\HP500-24"
WshNetwork.AddWindowsPrinterConnection "\\Server1\HP1220t"

WshNetwork.SetDefaultPrinter "\\Server1\HP1220A"