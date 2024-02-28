#!/bin/sh

if [ $# -lt 2 ]
then
    echo "Arguments missing in writer.sh..."
    exit 1
fi

mkdir -p "$(dirname $1)" && touch $1

if ! [ -f $1 ]
then
    echo "File could not be created ..."
    exit 1
fi

echo $2 > $1