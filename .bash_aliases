#This file allows different set constant variables to be used in bash
#Inspired by Mike Stewart - http://MediaDoneRight.com
#Color formats obtained from http://misc.flogisoft.com/bash/tip_colors_and_formatting 

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-COLORS=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

#Reset -- This Reset all the current colors set
Reset="\[\e[0m\]" 

#Base Colors
Brown="\[\e[38;5;94m\]"
DarkGreen="\[\e[38;5;64m\]"
Green="\[\e[38;5;40m\]"

#Bold Colors
BGreen="\[\e[32;1m\]"

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-GIT PROMPT=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
GIT_PS1_SHOWDIRTYSTATE="kk" #Display a * If there's a modified/deleted file
GIT_PS1_SHOWUNTRACKEDFILES="kk" #Display a % if there's an untracked file in the director
GIT_PS1_SHOWUPSTREAM="verbose name" #Show Difference with Upstream
