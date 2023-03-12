#!/bin/zsh

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi

folders=("docs" "java" "javascript" "python")


for str in ${folders[@]}; do
  echo "creating folder $1 in $str folder"
  mkdir ./$str/$1
done