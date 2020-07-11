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

PS1='\e[1;34m\u@\H:\e[0m\e[1;33m\W\e[0m\e[1;35m$\e[0m ' # This will give: user@pc_name:cwd
echo -e "\e[97mChanged"





: ' 

Originally on my bash terminal, $PS1 had this:
PS1=\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$


\H     the hostname
\u     the username of the current user
\w     the current working directory

to give colors  \e[{Text_Format};{Text_Color}mPROMPT_FORMAT\e[0m

\e[{Text_Format};{Text_Color}m : set colors
\e[0m : to reset color and text format to default

{Text_Format} : 
0-normal
1-bold
4-underline

{Text_Color} :
30: Black
31: Red
32: Green
33: Yellow
34: Blue
35: Purple
36: Cyan
37: White
'
