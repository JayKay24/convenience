#!/usr/bin/env bash

findThisFile() {
  directory=$1
  pattern=$2
  fileType=$3

  if [[ -z $pattern ]];
  then
	echo "Please provide a pattern to use in the search"
  else
	find ${directory:-"."} -iregex $pattern -type ${fileType:-f} -print
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
	if [[ -f $fileToSearch ]];
	then
	  grep -inE $pattern $fileToSearch
	else
	  echo "File does not exist"
	fi
  else
	echo "Please provide both a regex pattern and file to use in the search"
  fi
}

searchAndReplace() {
  pattern=$1
  fileToUse=$2

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

loopOutputAndDoCommand() {
  command=$1

  if [[ -z $command ]];
  then
	echo "No command to perform action on loop"
  else
	while IFS= read -r filePath;
	do
	  if [[ -f $filePath ]];
	  then
		eval $command $filePath
	  fi
	done
  fi
}

copyInBulk() {
  destination=$1

  if [[ -n $destination ]];
  then
	while IFS= read -r filePath;
	do
	  if [[ -f $filePath ]];
	  then
		cp -Rv $filePath $destination
	  fi
	done
  else
	echo "Please provide a destination directory"
  fi
 }

moveInBulk() {
  destination=$1

  if [[ -n $destination ]];
  then
	while IFS= read -r filePath;
	do
	  if [[ -f $filePath ]];
	  then
		mv -v $filePath $destination
	  fi
	done
  else
	echo "Please provide a destination directory"
  fi
}


