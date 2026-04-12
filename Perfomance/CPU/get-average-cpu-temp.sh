#/bin/sh
# Get average CPU temperature from all cores.
__=`sensors | grep Core` && echo \(`echo $__ | sed 's/.*+\(.*\).C\(\s\)\+(.*/\1/g' | tr "\n" "+" | head -c-1`\)\/`echo $__ | wc -l` | bc && unset __