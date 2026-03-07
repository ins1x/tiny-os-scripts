:: Reset Volume Mixer Settings...
NET STOP "Creative Audio Service"
NET STOP Audiosrv
NET STOP AudioEndpointBuilder
REG DELETE "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore" /F
REG ADD "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore"
NET START Audiosrv
NET START "Creative Audio Service"