#!/bin/sh
# File statistics
# output example: file=file.log inode=131089 size=2048 owner=root:adm mode=640
stat -c 'file=%n inode=%i size=%s owner=%U:%G mode=%a' *
