#!/usr/bin/bash

tmpFILE="/tmp/mini_runner"

if [ $# -eq 0 ];then
  echo "    you should gives a command"
  exit 1
fi

COMMAND="$*"

job(){
  clear
  echo "Run $COMMAND"
  eval "$COMMAND"
}

main(){

  trap 'exit 0;' INT

  while true;do
    sleep 1
    echo
    while [ ! -f "$tmpFILE" ];do
      sleep 1
      echo -n "."
    done
    job
    rm -f "$tmpFILE"
  done
}


main "$@"
