#!/usr/bin/env bash

fileName=$1

if [[ -n $fileName ]];
then
  touch $fileName
  if [[ -f $fileName ]];
  then
    chmod +x $fileName
    printf "#!/usr/bin/env bash\n\n\n" > $fileName
    vim $fileName
  else
    echo "Failed to create file"
  fi
else
  echo "Please provide a file name"
fi

