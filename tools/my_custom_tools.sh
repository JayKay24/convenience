#!/usr/bin/env bash

findThisFile() {
  directory=""
  pattern=""
  fileType=""
  ignoreDir=""

  optString="d:p:fi:"

  while getopts $optString opt
  do
    case $opt in
      d) directory=$OPTARG ;;
      p) pattern=$OPTARG ;;
      i) ignoreDir=$OPTARG ;;
      f) fileType=d ;;
    esac
  done

  if [[ -z $pattern ]];
  then
    echo "Please provide a pattern to use in the search"
  elif [[ -z $ignoreDir ]];
  then
    find ${directory:-.} -iregex $pattern -type ${fileType:-f} -print
  else
    find ${directory:-.} -type ${fileType:-f} -iregex $pattern ! -path $ignoreDir
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
  srcInput=""

  optString="c:n:s:"

  while getopts $optString opt
  do
    case $opt in
      c) cmd=$OPTARG ;;
      n) numTimes=$OPTARG ;;
      s) srcInput=$OPTARG ;;
    esac
  done

  if [[ -z $cmd ]];
  then
	  echo "No command to perform action on loop"
  else
    if [[ -z $numTimes ]];
    then
      if [[ -n $srcInput ]];
      then
        eval $srcInput |
        while IFS= read -r filePath;
        do
          if [[ -f $filePath ]] || [[ -d $filePath ]];
          then
            # fp="${filePath//" "/\\" "}"
            doThis="$cmd \"$filePath\""
            eval $doThis
          fi
        done
      else
        echo "No output to read from and feed the loop"
      fi
    else
      if [[ ! $numTimes =~ ^[0-9]+$ ]];
      then
        echo "Please provide a valid number of times"
      else
        numTimes=$(( numTimes + 0 ))
        for num in {1..$numTimes};
        do
          eval $cmd
        done
      fi
    fi
  fi
}

copyInBulk() {
  destination=$1

  optString="d:s:"

  while getopts $optString opt
  do
    case $opt in
      d) destination=$OPTARG ;;
      s) srcInput=$OPTARG ;;
    esac
  done

  if [[ -d $destination ]];
  then
    eval $srcInput |
    while IFS= read -r filePath;
    do
      if [[ -f $filePath ]];
      then
        cmd="cp -Rv \"$filePath\" \"$destination\""
        eval $cmd
      fi
    done
  else
	  echo "Please provide a valid destination directory"
  fi
 }

moveInBulk() {
  destination=$1

  optString="d:s:"

  while getopts $optString opt
  do
    case $opt in
      d) destination=$OPTARG ;;
      s) srcInput=$OPTARG ;;
    esac
  done

  if [[ -d $destination ]];
  then
    eval $srcInput |
    while IFS= read -r filePath;
    do
      if [[ -f $filePath ]];
      then
        cmd="mv -v \"$filePath\" \"$destination\""
        eval $cmd
      fi
    done
  else
	  echo "Please provide a valid destination directory"
  fi
}
