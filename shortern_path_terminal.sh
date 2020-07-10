#!/usr/bin/bash


PS1='\e[1;34m\u@\H:\e[0m\e[1;33m\W\e[0m\e[1;35m$\e[0m ' # This will give: user@pc_name:cwd
echo "Changed"

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
