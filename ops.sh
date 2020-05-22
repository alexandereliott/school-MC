#!/bin/bash

if test "$#" -ne 3; then
echo "wrong number of arguments"
echo "Please try your command again."
echo "Here's an example of correct usage:"
echo "bash addresslookup.sh addressbook.txt CSE"
exit 64
fi 

NUMBERSARRAY=("$@")


echo ${NUMBERSARRAY[1]}
operator=${NUMBERSARRAY[1]}
echo "$operator"

#getopts '+-x/?:' OPTION; do
  case "$operator" in
    +)
      echo "addition"
	expr ${NUMBERSARRAY[0]} + ${NUMBERSARRAY[2]}

      ;;

    -)
      echo "subtration"
      expr ${NUMBERSARRAY[0]} - ${NUMBERSARRAY[2]}
      ;;

    x)
      echo "multiplication"
      echo $(( ${NUMBERSARRAY[0]} * ${NUMBERSARRAY[2]} ))
      ;;
    /)
        echo "division"
	expr ${NUMBERSARRAY[0]} / ${NUMBERSARRAY[2]}
        ;;

    ?)
      echo "script example: $(basename $0) 5 x 10 " >&2
      exit 1
      ;;
  esac

