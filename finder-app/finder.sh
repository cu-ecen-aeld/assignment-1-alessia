#!/bin/sh


if [ $# = 0 ]
then
    echo "Arguments missing in finder.sh..."
    exit 1
elif ! [ -d $1 ]
then
    echo "Path is not a directory..."
    exit 1
fi

num_files=$(find $1 -type f | wc -l)

# Count only lines with the string and not every string
num_matching_lines=$(grep -r $2 $1 | uniq | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines."


