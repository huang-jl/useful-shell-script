# use sed to match some sub string
echo "12.324 s" | sed 's/\([0-9]\+\.[0-9]\+\).*/\1/g'
echo "number: $number"