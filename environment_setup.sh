#!/bin/bash
#title           :environment_setup.sh
#description     :This script will clone a git project, based on user selection.
#author		 :A. Laszlo Lazuer
#date            :12/05/2016
#version         :0.1a
#usage		 :./environment_setup.sh
#notes           :Execute from within a UNIX/Linux terminal.
#bash_version    :3.2.57(1)
#===============================================================================

#Terminal Cleanup
clear

echo "
  ______ __    ___             _         __    _______
 / ___(_) /_  / _ \_______    (_)__ ____/ /_  / ___/ /__  ___  ___
/ (_ / / __/ / ___/ __/ _ \  / / -_) __/ __/ / /__/ / _ \/ _ \/ -_)
\___/_/\__/ /_/  /_/  \___/_/ /\__/\__/\__/  \___/_/\___/_//_/\__/
                         |___/
"
while true
do

  printf "Hello, what's your name?: "
  read -r test

  if [ "$test" == "name" ]; then
    echo "Yay $test"
    exit
  elif [ "$test" == "me" ]; then
    echo "Yay $test"
  elif [ "$test" == "q" ] || [ "$test" == "exit" ]; then
    echo "Exitting ..."
    exit
  else
   echo "No match."
  fi
done
