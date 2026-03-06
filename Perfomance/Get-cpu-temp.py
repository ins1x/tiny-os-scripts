#!/usr/bin/env python3
# This is a simple python script to calculate CPU Temperature, which is compatible with Linux based
# Operating System. For the running this script make sure you have python install along with library "psutil".
import psutil

data = psutil.sensors_temperatures()
print("Current Temperature of CPU (celcius): ", data['coretemp'][0][1])