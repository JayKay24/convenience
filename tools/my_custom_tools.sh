#!/usr/bin/env bash

findThisFile() {
  directory=$1
  pattern=$2
  fileType=$3

  if [[ $# < 3 ]];
  then
    pattern=$1
    fileType=$2
    directory=""
  fi

  if [[ -z $pattern ]];
  then
	  echo "Please provide a pattern to use in the search"
  else
	  find ${directory:-.} -iregex $pattern -type ${fileType:-f} -print
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
  cmd=$1
  numTimes=$2

  if [[ $# -eq 0 ]];
  then
	  echo "No command to perform action on loop"
  else
    if [[ $# < 2 ]];
    then
      while IFS= read -r filePath;
      do
        if [[ -f $filePath ]] || [[ -d $filePath ]];
        then
          eval $cmd $filePath
        fi
      done
    else
      if [[ ! $numTimes =~ ^[0-9]+$ ]];
      then
        echo "Please provide a valid number of times"
      else
        numTimes=$(( numTimes + 0 ))
        for i in {1..$numTimes};
        do
          eval $cmd
        done
      fi
    fi
  fi
}

copyInBulk() {
  destination=$1

  if [[ -n $destination ]];
  then
    while IFS= read -r filePath;
    do
      if [[ -f $filePath ]] && [[ -d $destination ]];
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
      if [[ -f $filePath ]] && [[ -d $destination ]];
      then
        mv -v $filePath $destination
      fi
    done
  else
	  echo "Please provide a destination directory"
  fi
}


