#!/usr/bin/env bash
# Create a tree of directories and files by passing in a depth and width
# Usage: create-tree.sh <depth> <width>

#!/bin/bash

# Function to create a directory and populate it with files
create_dir() {
    local depth=$1
    local width=$2
    local current_depth=$3
    local parent_dir=$4

    if (( current_depth > depth )); then
        return
    fi

    for i in $(seq 1 "$width"); do
        local new_dir="$parent_dir/dir-$i"
        mkdir -p "$new_dir"
        touch "$new_dir/file-$i"

        create_dir "$depth" "$width" $((current_depth + 1)) "$new_dir"
    done
}

# Check if the script received the required arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: create-tree.sh <depth> <width>"
    exit 1
fi

depth=$1
width=$2

# Validate if the input arguments are positive integers
if ! [[ "$depth" =~ ^[1-9][0-9]*$ ]] || ! [[ "$width" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Both depth and width must be positive integers."
    exit 1
fi

# Call the create_dir function with the given arguments
create_dir "$depth" "$width" 1 "."
