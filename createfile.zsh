#!/bin/zsh

if [ $# -lt 2 ]
  then
    echo "folder name and file name are required as arguments"
    exit 1
fi

declare -A extension

extension[docs]=txt
extension[java]=java
extension[javascript]=js
extension[python]=py

for folder in "${(@k)extension}"; do
    echo "creating file $2.$extension[$folder] in $folder/$1"
    touch $folder/$1/$2.$extension[$folder]
done