#!/usr/bin/bash

:<<'COMMENT'
vlc_details=$(ps aux | grep -i vlc | sed -n '1p')
vlc_pid=$(echo $vlc_details | awk '{print $2}')

kill -9 $vlc_pid
COMMENT

function usage() {
	
	echo "ensure the shebang corresponds with your shell enviroment"
	echo "run the script with a . to execute in the same shell"
	echo -e "\e[32m			. terminate_program.sh\e[0m"
}

function terminate_program() {

	vlc_details=$(ps aux | grep -i $program_to_terminate | sed -n '1p')
	vlc_pid=$(echo $vlc_details | awk '{print $2}')

	kill -9 $vlc_pid
}


read -p "What program would you like to terminate?: "  program_to_terminate

usage
terminate_program

echo -e "\e[32m$program_to_terminate terminated \e[0m"