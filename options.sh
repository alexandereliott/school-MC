#!/bin/bash
set -e
set -u
set -o pipefail


while getopts 'cld?:' OPTION; do
  case "$OPTION" in
    c)
      clear
      ;;

    l)
      ls -l
      ;;

    d)
      date
      ;;

    ?)
      echo "script usage: $(basename $0) [-c] [-l] [-d] [-?] [-a somevalue]" >&2
      exit 1
      ;;
  esac
done
