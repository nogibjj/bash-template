#!/bin/bash
# Create a tree of directories and files by passing in a depth and width
# Usage: create-tree.sh <dirname> <depth> <width>



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
if [ "$#" -ne 3 ]; then
    echo "Usage: create-tree.sh <dirname> <depth> <width>"
    exit 1
fi

dirname=$1
depth=$2
width=$3

# Validate if the input arguments are correct
if [[ -z "$dirname" ]] || ! [[ "$depth" =~ ^[1-9][0-9]*$ ]] || ! [[ "$width" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: dirname must be a non-empty string, and both depth and width must be positive integers."
    exit 1
fi

# Create the parent directory if it does not exist
mkdir -p "$dirname"

# Call the create_dir function with the given arguments
create_dir "$depth" "$width" 1 "$dirname"
