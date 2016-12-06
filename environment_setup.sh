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

  printf "Would you like to setup your workspace?: "
  read -r answer

  if [ "$answer" == "yes" ] || [ "$answer" == "y" ]; then
    echo "Checking to see if workspace directory exists..."

    #Check if workspace directory exists
    cd ~/
    if [ -d "workspace" ]; then
      # Control will enter here if $DIRECTORY exists.
      echo "workspace directory already exists, continuing"
      exit #temporary exit
    elif [ ! -d  "workspace" ]; then
      # Control will enter here if $DIRECTORY exists.
      echo "Creating workspace directory..."
      mkdir ~/workspace
      echo "workspace directory created"
    exit #temporary exit
    fi

  elif [ "$answer" == "me" ]; then
    echo "Yay $answer"
  elif [ "$answer" == "q" ] || [ "$answer" == "exit" ]; then
    echo "Exitting ..."
    exit
  else
   echo "No match."
  fi
done
