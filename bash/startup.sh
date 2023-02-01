#!/bin/bash

############################################################
# Help                                                     #
############################################################
help() {
   # Display Help
   echo "Startup workspace"
   echo
   echo "Currently supported shoretrade"
   echo
   echo "Syntax: startup.sh [-c|h|w]"
   echo "options:"
   echo "-w shoretrade    Workspace that going to startup. Available option shoretrade"
   echo "-s               Setup startup script."
   echo "-h               Print help."
   echo "-v               Print version."
   echo
}

############################################################
# Version                                                  #
############################################################
version() {
   # Display version
   echo "startup.sh 1.0.0"
}


############################################################
############################################################
# Main program                                             #
############################################################
############################################################

# Stationfive project path
STATIONFIVE_PATH="${HDD_PATH}office/stationfive/projects"

setup_startup() {
  if [[ -f /usr/local/bin/startup ]]; then
    echo "Starting to remove existing startup"
    sudo rm /usr/local/bin/startup
  fi

  echo "Copy startup.sh to /usr/local/bin/ path"
  sudo cp ./startup.sh /usr/local/bin/startup
  echo "Done setup startup"
}

start_shoretrade() {
  echo "Starting up shoretrade"
  if ! tmux ls | grep "shoretrade"; then
    cd "${STATIONFIVE_PATH}"

    tmux new -s shoretrade -d
    # Navigate to Backend
    tmux send-keys "cd manettas-be" C-m
    echo "Running docker"
    tmux send-keys "docker start shoretrade-db shoretrade-redis" C-m

    tmux split-window -h
    tmux send-keys "cd manettas-fe-revamp" C-m

    tmux select-pane -L

    echo "Done starting up shoretrade"
  fi

  echo "Running shoretrade"
  tmux attach -t shoretrade
}

main () {
  if [[ "$CONFIG" == "shoretrade" ]]; then
    start_shoretrade
  else
    echo "Error: Invalid argument"
  fi
}

############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
while getopts ":hvsw:" option; do
   case $option in
      h) # display Help
         help
         exit;;
      v) # display Version
         version
         exit;;
      s) # setup startup script
         setup_startup
         exit;;
      w) # Enter config
         CONFIG=$OPTARG
         CURRENT_DIR=$(pwd)
         main;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done
