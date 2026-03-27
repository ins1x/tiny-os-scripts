#/bin/sh
# Find which processes hold NFS files
lsof | grep nfs
cat /proc/self/mounts | grep nfs