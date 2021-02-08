#!/usr/bin/env bash

findThisFile() {
  fileType=$2

  find . -iregex $1 -type ${fileType:-f} -print
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

getCurrentWeather() {
  city=$1

  curl --max-time 1 "http://wttr.in/${city:-'nairobi,ke'}"
}

listDirAndSearch() {
  pattern=$1

  if [[ -n $pattern ]];
  then
	ls -lap | grep -inE $pattern
  else
	echo "Please provide the pattern to use in the search"
  fi
}
