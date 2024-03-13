#!/bin/bash

set -e

# Check if the correct number of arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <query_file_name>"
    exit 1
fi

INPUT_FILE="docs/queries/$1"

# Check if the input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found"
    exit 1
fi

# Read the contents of the query file
QUERY=$(<"$INPUT_FILE")

# Replace MY_QUERY_HERE with the content of the query file
COMMAND="nix run github:inferenceql/inferenceql.query/zane/nix-build -- --db docs/data/db-stackoverflow.edn -e \"$QUERY\" -o csv"

eval "$COMMAND"
