#!/bin/bash
# Displays the time source, an estimate of the clock offset, and the synchronization status.
# The "System time," "Last offset," and "Root dispersion" values ​​are particularly useful; 
# they indicate how much the system clock deviates from the estimated accurate time, as well as the degree of uncertainty associated with that estimate.
chronyc tracking
chronyc sources -v