#!/usr/bin/bash

function usage() {
	
	echo "ensure the shebang corresponds with your shell enviroment"
	echo "run the script with a . to execute in the same shell"
	echo -e "\e[32m			. shorten_shell_path.sh "
}

function user_color_select() {
	printf "\n\n\nPLEASE CHOOSE THE COLOR TO USE TO HIGHLIGHT THE USER AND COMPUTER NAME \n\n\n "
	PS3='Please enter your choice: '
	options=( "black" "red" "green" "yellow" "blue" "magenta" "cyan" "light gray" "dark gray" "light red" "light green" "light yellow" "light blue" "light magenta" "light cyan" "white" "Quit")
	select opt in "${options[@]}"
	do
		case $opt in
			"black")
				echo -e "\033[01;30myou chose choice BLACK\e[0m"
				user_color="[\033[01;30m\]"
				break
				;;
			"red")
				echo -e "\033[01;31myou chose choice RED\e[0m"
				user_color="[\033[01;31m\]"
				break
				;;
			"green")
				echo -e "\033[01;32myou chose choice GREAN\e[0m"
				user_color="[\033[01;32m\]"
				break
				;;
			"yellow")
				echo -e "\033[01;33myou chose choice YELLOW\e[0m"
				user_color="[\033[01;33m\]"
				break
				;;
			"blue")
				echo -e "\033[01;34myou chose choice BLUE\e[0m"
				user_color="[\033[01;34m\]"
				break
				;;
			"magenta")
				echo -e "\033[01;35myou chose choice MAGENTA\e[0m"
				user_color="[\033[01;35m\]"
				break
				;;
			"cyan")
				echo -e "\033[01;36myou chose choice CYAN\e[0m"
				user_color="[\033[01;36m\]"
				break
				;;
			"light gray")
				echo -e "\033[01;37myou chose choice LIGHT GRAY\e[0m"
				user_color="[\033[01;37m\]"
				break
				;;
			"dark gray")
				echo -e "\033[01;90myou chose choice DARK GRAY\e[0m"
				user_color="[\033[01;90m\]"
				break
				;;
			"light red")
				echo -e "\033[01;91myou chose choice LIGHT RED\e[0m"
				user_color="[\033[01;91m\]"
				break
				;;
			"light green")
				echo -e "\033[01;92myou chose choice LIGHT GREEN\e[0m"
				user_color="[\033[01;92m\]"
				break
				;;
			"light yellow")
				echo -e "\033[01;93myou chose choice LIGHT YELLOW\e[0m"
				user_color="[\033[01;93m\]"
				break
				;;
			"light blue")
				echo -e "\033[01;94myou chose choice LIGHT BLUE\e[0m"
				user_color="[\033[01;94m\]"
				break
				;;
			"light magenta")
				echo -e "\033[01;95myou chose choice LIGHT MAGENTA\e[0m"
				user_color="[\033[01;95m\]"
				break
				;;
			"light cyan")
				echo -e "\033[01;96myou chose choice LIGH CYAN\e[0m"
				user_color="[\033[01;96m\]"
				break
				;;
			"white")
				echo -e "\033[01;97myou chose choice WHITE\e[0m"
				user_color="[\033[01;97m\]"
				break
				;;
			"Quit")
				break
				;;
			*) echo "invalid option $REPLY";;
		esac
	done
}

function machine_color_select() {
	
	PS3='Please enter your choice: '
	options=( "black" "red" "green" "yellow" "blue" "magenta" "cyan" "light gray" "dark gray" "light red" "light green" "light yellow" "light blue" "light magenta" "light cyan" "white" "Quit")
	select opt in "${options[@]}"
	do
		case $opt in
			"black")
				echo -e "\033[01;30myou chose choice BLACK\e[0m"
				machine_color="[\033[01;30m\]"
				break
				;;
			"red")
				echo -e "\033[01;31myou chose choice RED\e[0m"
				machine_color="[\033[01;31m\]"
				break
				;;
			"green")
				echo -e "\033[01;32myou chose choice GREAN\e[0m"
				machine_color="[\033[01;32m\]"
				break
				;;
			"yellow")
				echo -e "\033[01;33myou chose choice YELLOW\e[0m"
				machine_color="[\033[01;33m\]"
				break
				;;
			"blue")
				echo -e "\033[01;34myou chose choice BLUE\e[0m"
				machine_color="[\033[01;34m\]"
				break
				;;
			"magenta")
				echo -e "\033[01;35myou chose choice MAGENTA\e[0m"
				machine_color="[\033[01;35m\]"
				break
				;;
			"cyan")
				echo -e "\033[01;36myou chose choice CYAN\e[0m"
				machine_color="[\033[01;36m\]"
				break
				;;
			"light gray")
				echo -e "\033[01;37myou chose choice LIGHT GRAY\e[0m"
				machine_color="[\033[01;37m\]"
				break
				;;
			"dark gray")
				echo -e "\033[01;90myou chose choice DARK GRAY\e[0m"
				machine_color="[\033[01;90m\]"
				break
				;;
			"light red")
				echo -e "\033[01;91myou chose choice LIGHT RED\e[0m"
				machine_color="[\033[01;91m\]"
				break
				;;
			"light green")
				echo -e "\033[01;92myou chose choice LIGHT GREEN\e[0m"
				machine_color="[\033[01;92m\]"
				break
				;;
			"light yellow")
				echo -e "\033[01;93myou chose choice LIGHT YELLOW\e[0m"
				machine_color="[\033[01;93m\]"
				break
				;;
			"light blue")
				echo -e "\033[01;94myou chose choice LIGHT BLUE\e[0m"
				machine_color="[\033[01;94m\]"
				break
				;;
			"light magenta")
				echo -e "\033[01;95myou chose choice LIGHT MAGENTA\e[0m"
				machine_color="[\033[01;95m\]"
				break
				;;
			"light cyan")
				echo -e "\033[01;96myou chose choice LIGH CYAN\e[0m"
				machine_color="[\033[01;96m\]"
				break
				;;
			"white")
				echo -e "\033[01;97myou chose choice WHITE\e[0m"
				machine_color="[\033[01;97m\]"
				break
				;;
			"Quit")
				break
				;;
			*) echo "invalid option $REPLY";;
		esac
	done
}

function cwd_color_select() {
	printf "\n\n\nPLEASE CHOOSE THE COLOR TO USE TO HIGHLIGHT THE CURRENT WORKING DIRECTORY \n\n\n "
	PS3='Please enter your choice: '
	options=( "black" "red" "green" "yellow" "blue" "magenta" "cyan" "light gray" "dark gray" "light red" "light green" "light yellow" "light blue" "light magenta" "light cyan" "white" "Quit")
	select opt in "${options[@]}"
	do
		case $opt in
			"black")
				echo -e "\033[01;30myou chose choice BLACK\e[0m"
				cwd_color="[\033[01;30m\]"
				break
				;;
			"red")
				echo -e "\033[01;31myou chose choice RED\e[0m"
				cwd_color="[\033[01;31m\]"
				break
				;;
			"green")
				echo -e "\033[01;32myou chose choice GREAN\e[0m"
				cwd_color="[\033[01;32m\]"
				break
				;;
			"yellow")
				echo -e "\033[01;33myou chose choice YELLOW\e[0m"
				cwd_color="[\033[01;33m\]"
				break
				;;
			"blue")
				echo -e "\033[01;34myou chose choice BLUE\e[0m"
				cwd_color="[\033[01;34m\]"
				break
				;;
			"magenta")
				echo -e "\033[01;35myou chose choice MAGENTA\e[0m"
				cwd_color="[\033[01;35m\]"
				break
				;;
			"cyan")
				echo -e "\033[01;36myou chose choice CYAN\e[0m"
				cwd_color="[\033[01;36m\]"
				break
				;;
			"light gray")
				echo -e "\033[01;37myou chose choice LIGHT GRAY\e[0m"
				cwd_color="[\033[01;37m\]"
				break
				;;
			"dark gray")
				echo -e "\033[01;90myou chose choice DARK GRAY\e[0m"
				cwd_color="[\033[01;90m\]"
				break
				;;
			"light red")
				echo -e "\033[01;91myou chose choice LIGHT RED\e[0m"
				cwd_color="[\033[01;91m\]"
				break
				;;
			"light green")
				echo -e "\033[01;92myou chose choice LIGHT GREEN\e[0m"
				cwd_color="[\033[01;92m\]"
				break
				;;
			"light yellow")
				echo -e "\033[01;93myou chose choice LIGHT YELLOW\e[0m"
				cwd_color="[\033[01;93m\]"
				break
				;;
			"light blue")
				echo -e "\033[01;94myou chose choice LIGHT BLUE\e[0m"
				cwd_color="[\033[01;94m\]"
				break
				;;
			"light magenta")
				echo -e "\033[01;95myou chose choice LIGHT MAGENTA\e[0m"
				cwd_color="[\033[01;95m\]"
				break
				;;
			"light cyan")
				echo -e "\033[01;96myou chose choice LIGH CYAN\e[0m"
				cwd_color="[\033[01;96m\]"
				break
				;;
			"white")
				echo -e "\033[01;97myou chose choice WHITE\e[0m"
				cwd_color="[\033[01;97m\]"
				break
				;;
			"Quit")
				break
				;;
			*) echo "invalid option $REPLY";;
		esac
	done
}


function typying_color_select() {
	printf "\n\n\nPLEASE CHOOSE THE COLOR TO USE ON NORMAL ACTIVITIES \n\n\n "
	PS3='Please enter your choice: '
	options=( "black" "red" "green" "yellow" "blue" "magenta" "cyan" "light gray" "dark gray" "light red" "light green" "light yellow" "light blue" "light magenta" "light cyan" "white" "Quit")
	select opt in "${options[@]}"
	do
		case $opt in
			"black")
				echo -e "\033[01;30myou chose choice BLACK\e[0m"
				typying_color="[\033[00;30m\]"
				break
				;;
			"red")
				echo -e "\033[01;31myou chose choice RED\e[0m"
				typying_color="[\033[00;31m\]"
				break
				;;
			"green")
				echo -e "\033[01;32myou chose choice GREAN\e[0m"
				typying_color="[\033[00;32m\]"
				break
				;;
			"yellow")
				echo -e "\033[01;33myou chose choice YELLOW\e[0m"
				typying_color="[\033[00;33m\]"
				break
				;;
			"blue")
				echo -e "\033[01;34myou chose choice BLUE\e[0m"
				typying_color="[\033[00;34m\]"
				break
				;;
			"magenta")
				echo -e "\033[01;35myou chose choice MAGENTA\e[0m"
				typying_color="[\033[00;35m\]"
				break
				;;
			"cyan")
				echo -e "\033[01;36myou chose choice CYAN\e[0m"
				typying_color="[\033[00;36m\]"
				break
				;;
			"light gray")
				echo -e "\033[01;37myou chose choice LIGHT GRAY\e[0m"
				typying_color="[\033[00;37m\]"
				break
				;;
			"dark gray")
				echo -e "\033[01;90myou chose choice DARK GRAY\e[0m"
				typying_color="[\033[00;90m\]"
				break
				;;
			"light red")
				echo -e "\033[01;91myou chose choice LIGHT RED\e[0m"
				typying_color="[\033[00;91m\]"
				break
				;;
			"light green")
				echo -e "\033[01;92myou chose choice LIGHT GREEN\e[0m"
				typying_color="[\033[00;92m\]"
				break
				;;
			"light yellow")
				echo -e "\033[01;93myou chose choice LIGHT YELLOW\e[0m"
				typying_color="[\033[00;93m\]"
				break
				;;
			"light blue")
				echo -e "\033[01;94myou chose choice LIGHT BLUE\e[0m"
				typying_color="[\033[00;94m\]"
				break
				;;
			"light magenta")
				echo -e "\033[01;95myou chose choice LIGHT MAGENTA\e[0m"
				typying_color="[\033[00;95m\]"
				break
				;;
			"light cyan")
				echo -e "\033[01;96myou chose choice LIGH CYAN\e[0m"
				typying_color="[\033[00;96m\]"
				break
				;;
			"white")
				echo -e "\033[01;97myou chose choice WHITE\e[0m"
				typying_color="[\033[00;97m\]"
				break
				;;
			"Quit")
				break
				;;
			*) echo "invalid option $REPLY";;
		esac
	done
}

function colors() {
	echo -e "Default \e[30mBlack"				
	echo -e "Default \e[31mRed"					
	echo -e "Default \e[32mGreen"
	echo -e "Default \e[33mYellow"
	echo -e "Default \e[34mBlue"
	echo -e "Default \e[35mMagenta"
	echo -e "Default \e[36mCyan"
	echo -e "Default \e[37mLight gray"
	echo -e "Default \e[90mDark gray"
	echo -e "Default \e[91mLight red"
	echo -e "Default \e[92mLight green"
	echo -e "Default \e[93mLight yellow"
	echo -e "Default \e[94mLight blue"
	echo -e "Default \e[95mLight magenta"
	echo -e "Default \e[96mLight cyan"
	echo -e "Default \e[97mWhite"
}


printf "Afternoon sir, I will be your personal assistant for this session!\n\n\n"

usage

user_color_select
# machine_color_select
cwd_color_select
typying_color_select


hold='\[\e]0;\u@\h: \w\a\]\'$user_color'\u@\h\[\033[00m\]:\'$cwd_color'\W\'$typying_color'$ '
PS1=${hold}

# PS1='\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$ ' # This will give: user@pc_name:cwd


echo -e "\e[97mChanged"

