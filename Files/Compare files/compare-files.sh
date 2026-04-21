# Example comparing two files

diff --brief <(sort file1) <(sort file2) >/dev/null
comp_value=$?

if [ $comp_value -eq 1 ]
then
    echo "do something because they're different"
else
    echo "do something because they're identical"
fi

# Also If you want to compare two files byte by byte, use the cmp utility.
#if cmp -s -- "$file1" "$file2"; then
#  echo "$file1 and $file2 have identical contents"
#else
#  echo "$file1 and $file2 differ"
#fi