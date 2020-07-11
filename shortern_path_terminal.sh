#!/usr/bin/bash

function usage() {
	
	echo "ensure the shebang corresponds with your shell enviroment"
	echo "run the script with a . to execute in the same shell"
	echo -e "\e[32m			. shorten_shell_path.sh "
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


usage

PS1='\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$ ' # This will give: user@pc_name:cwd
echo -e "\e[97mChanged"

