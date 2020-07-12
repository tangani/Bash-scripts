#!/usr/bin/bash

function usage() {
	
	echo "ensure the shebang corresponds with your shell enviroment"
	echo "run the script with a . to execute in the same shell"
	echo -e "\e[32m			. shortern_path_terminal.sh \e[0m"
}

function color_select() {
	# echo $start
	printf " \n\n"
	echo "PLEASE CHOOSE THE COLOR TO USE TO HIGHLIGHT THE "$position
	printf " \n\n"
	PS3='Please enter your choice: '
	options=( "black" "red" "green" "yellow" "blue" "magenta" "cyan" "light gray" "dark gray" "light red" "light green" "light yellow" "light blue" "light magenta" "light cyan" "white" "Quit")
	select opt in "${options[@]}"
	do
		case $opt in
			"black")
				echo -e "\033[01;30myou chose choice BLACK\e[0m"
				color="[\033[01;30m\]"
				break
				;;
			"red")
				echo -e "\033[01;31myou chose choice RED\e[0m"
				color="[\033[01;31m\]"
				break
				;;
			"green")
				echo -e "\033[01;32myou chose choice GREAN\e[0m"
				color="[\033[01;32m\]"
				break
				;;
			"yellow")
				echo -e "\033[01;33myou chose choice YELLOW\e[0m"
				color="[\033[01;33m\]"
				break
				;;
			"blue")
				echo -e "\033[01;34myou chose choice BLUE\e[0m"
				color="[\033[01;34m\]"
				break
				;;
			"magenta")
				echo -e "\033[01;35myou chose choice MAGENTA\e[0m"
				color="[\033[01;35m\]"
				break
				;;
			"cyan")
				echo -e "\033[01;36myou chose choice CYAN\e[0m"
				color="[\033[01;36m\]"
				break
				;;
			"light gray")
				echo -e "\033[01;37myou chose choice LIGHT GRAY\e[0m"
				color="[\033[01;37m\]"
				break
				;;
			"dark gray")
				echo -e "\033[01;90myou chose choice DARK GRAY\e[0m"
				color="[\033[01;90m\]"
				break
				;;
			"light red")
				echo -e "\033[01;91myou chose choice LIGHT RED\e[0m"
				color="[\033[01;91m\]"
				break
				;;
			"light green")
				echo -e "\033[01;92myou chose choice LIGHT GREEN\e[0m"
				color="[\033[01;92m\]"
				break
				;;
			"light yellow")
				echo -e "\033[01;93myou chose choice LIGHT YELLOW\e[0m"
				color="[\033[01;93m\]"
				break
				;;
			"light blue")
				echo -e "\033[01;94myou chose choice LIGHT BLUE\e[0m"
				color="[\033[01;94m\]"
				break
				;;
			"light magenta")
				echo -e "\033[01;95myou chose choice LIGHT MAGENTA\e[0m"
				color="[\033[01;95m\]"
				break
				;;
			"light cyan")
				echo -e "\033[01;96myou chose choice LIGH CYAN\e[0m"
				color="[\033[01;96m\]"
				break
				;;
			"white")
				echo -e "\033[01;97myou chose choice WHITE\e[0m"
				color="[\033[01;97m\]"
				break
				;;
			"Quit")
				color="[\033[01;97m\]"
				break
				;;
			*) echo "invalid option $REPLY";;
		esac
	done
}




printf "Afternoon sir, I will be your personal assistant for this session!\n\n\n"

usage


position="USER NAME"

color_select
user_color=$color
# echo $user_color

position="@ SYMBOL"

color_select
at_color=$color
# echo $at_color

position="COMPUTER NAME"

color_select
machine_color=$color
# echo $machine_color

position="CURRENT WORKING DIRECTORY"

color_select
cwd_color=$color
# echo $cwd_color

position="NORMAL ACTIVIY"
color_select
typying_color=$color
# echo $typying_color

hold='\[\e]0;\u@\h: \w\a\]\'$user_color'\u\'$at_color'@\'$machine_color'\h\[\033[00m\]:\'$cwd_color'\W\'$typying_color'$ '
# echo $hold
PS1=${hold}

# PS1='\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$ ' # This will give: user@pc_name:cwd


echo -e "\e[97mChanged"