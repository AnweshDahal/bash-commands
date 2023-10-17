#!/bin/bash

# Check if the script was given the correct number of arguments
if [ $# -ne 1 ]; then
  echo "Usage: $0 url"
  exit 1
fi

# wget downloader
wget -c --tries=0 --retry-connrefused --timeout=2 --wait=1 --no-check-certificate --content-disposition $1
