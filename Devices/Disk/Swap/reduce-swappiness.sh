
#!/bin/sh
# Reduce swappiness to 10 (recommended for servers). Default value 60
sysctl -w vm.swappiness=10