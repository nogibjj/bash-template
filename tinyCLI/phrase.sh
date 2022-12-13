#!/usr/bin/env bash
#example: ./phrase.sh -c 5 -p "Hello World"

#if the user does not enter any arguments, print the usage
#basic error handling
#create a help function with -h and --help
if [ $# -eq 0 ]; then
    echo "Usage: $0 -c <count> -p <phrase>"
    exit 1
fi

if [ $# -ne 4 ]; then
    echo "Usage: $0 -c <count> -p <phrase>"
    exit 1
fi

#print help
if [ "$1" == "-h" ]; then
    echo "Usage: ./phrase.sh -c <number of times to print> -p <phrase to print>"
    exit 0
fi


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

#add help option
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
phrase_generator "${COUNT}" "${PHRASE}"