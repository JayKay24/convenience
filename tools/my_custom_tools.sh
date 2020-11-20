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
  fileToSearch=$2

  if [[ -n $pattern ]] && [[ -n $fileToSearch ]];
  then
	grep -inE $pattern $fileToSearch
  else
	echo "Please provide both a regex pattern and file to use in the search"
  fi
}

searchAndReplace() {
  pattern=$1
  fileToUse=$2

  echo $pattern $replaceWith

  if [[ -n $pattern ]] && [[ -n $fileToUse ]];
  then
	sed -e "s/$pattern/g" $fileToUse
  else
	echo "Please provide the pattern and file to use"
  fi
}
