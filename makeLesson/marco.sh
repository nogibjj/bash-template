#!/usr/bin/env bash
# Purpose: A simple function to demonstrate the use of functions in bash scripts
# Usage: marco.sh Marco or marco.sh Bob
set -euo pipefail

marco () {
    if [ "$1" == "Marco" ]; then
        echo "Polo"
    else
        echo "What?"
    fi
}

#invoke as a command line function
marco "$1"
