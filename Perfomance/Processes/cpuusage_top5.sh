#!/usr/bin/sh
## --sort  according to cpu usage, the top 5, -pcpu descending, pcpu ascending
ps aux --sort=-pcpu | head -5 