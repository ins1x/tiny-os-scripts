# Recursive conversion line endings from CRLF windows format to LF linus format
# To recursively convert .sh files under the current directory (put dos2unix to current folder)
get-childitem -path . -filter '*.sh' -recurse | foreach-object {.\dos2unix $_.Fullname}