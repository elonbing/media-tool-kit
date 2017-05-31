#!/usr/bin/env bash

# Boilerplate Shite
# //////////////////////////////
set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

# Set magic variables for current file & dir
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)" # <-- change this as it depends on your app

arg1="${1:-}"

# Control Script Tools
# //////////////////////////////

# Init Function
initialize_mtk () {
  echo "initializing Media Tool Kit";
  cat splash.txt;
}

# Test Function
# initialize_mtk

# Test function as variable
echo "this is a function $(initialize_mtk) in a variable"

# Select Random File in Directory
RANDOM_FILE_IN_DIR="$(ls | head -$((RANDOM%$(ls | wc -w)+1)) | tail -1)"

# Select Most Recent File in Directory
RECENT_FILE_IN_DIR="$(ls -t | head -n1)"

# Random Integer
RANDOM_NUM="$((1 + RANDOM % 9))"

# Assorted Tests
# //////////////////////////////

# Test Bash Variables Within Variables
# RANDOM_NUM="$((1 + RANDOM % 9))"
# TEST="I'm a Varible in a String! $RANDOM_NUM"
# echo "I'm a $TEST another $RANDOM_NUM"

# Example printing the output of a python script inside of a bash command
#echo "$(python example.py)"
