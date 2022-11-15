#!/usr/bin/env bash

#Generate phrase "N" times
phrase_generator() {
    for ((i=0; i<$1;i++)); do
        echo "$2"
    done
}

#Parse Options
while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -c|--count)
    COUNT="$2"
    shift
    ;;
    -p|--phrase)
    PHRASE="$2"
    shift
    ;;
esac
shift
done

#Run program
#example: ./phrase.sh -c 5 -p "Hello World"
phrase_generator "${COUNT}" "${PHRASE}"