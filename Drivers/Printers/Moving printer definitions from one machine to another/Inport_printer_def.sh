#!/bin/sh
#Moving printer definitions from one machine to another
printconf-tui --Ximport < printers.xml
service cups restart
