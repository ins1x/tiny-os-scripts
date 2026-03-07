echo disable remote-control services
sc config TermService start= disabled
sc config RemoteRegistry start= disabled