#!/usr/bin/env bash

ARG="$1"

if [[ 'amd' != "$ARG" ]] && [[ 'arm' != "$ARG" ]]
then
  echo "ERROR: Invalid type - $ARG."
  exit
fi

docker run -it -d --name mysql -p 3306:3306 alexbursak/mysql:"$ARG"