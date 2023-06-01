#!/bin/bash

read -p "Please enter the file extension you would like to add: " fe

if [[ -z "$fe" ]]; then
  echo "Error: No file extension provided. Exiting."
  exit 1
fi

read -p "Please enter dir to run.  (Default: CWD)" dir
dir=${dir:-.}
