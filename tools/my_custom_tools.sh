#!/usr/bin/env bash

findThisFile() {
  directory=""
  pattern=""
  fileType=""

  optString="d:p:f:"

  while getopts $optString opt
  do
    case $opt in
      d) directory=$OPTARG ;;
      p) pattern=$OPTARG ;;
      f) fileType=$OPTARG ;;
    esac
  done

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
	  mkdir -p $name && cd $name
  else
	  echo "Please provide a directory name"
  fi
}

getCurrentWeather() {
  city=$1

  curl --max-time 1 "http://wttr.in/${city:-'nairobi,ke'}"
}

loopOutputAndDoCommand() {
  cmd=""
  numTimes=""

  optString="c:n:"

  while getopts $optString opt
  do
    case $opt in
      c) cmd=$OPTARG ;;
      n) numTimes=$OPTARG ;;
    esac
  done

  if [[ -z $cmd ]];
  then
	  echo "No command to perform action on loop"
  else
    if [[ -z $numTimes ]];
    then
      while IFS= read -r filePath;
      do
        if [[ -f $filePath ]] || [[ -d $filePath ]];
        then
          eval $cmd $filePath
        else
          break
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


