#!/usr/bin/env bash

findThisFile() {
  fileType=$2

  if [[ -z $fileType ]];
  then
	find . -iregex $1 -type f -print
  else
	find . -iregex $1 -type d -print
  fi
}

makeDirectoryAndEnter() {
  name=$1

  if [[ -n $name ]];
  then
	mkdir $name && cd $_
  else
	echo "Please provide a directory name"
  fi
}

searchForThisPhrase() {
  pattern=$1

  if [[ -n $pattern ]];
  then
	grep -inE $pattern
  else
	echo "Please provide a regex pattern to use in the search"
  fi
}
