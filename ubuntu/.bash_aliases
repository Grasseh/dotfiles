#This file allows different set constant variables to be used in bash
#Inspired by Mike Stewart - http://MediaDoneRight.com
#Color formats obtained from http://misc.flogisoft.com/bash/tip_colors_and_formatting 
# ===========
# Path + Env Variable
# ===========
export TERM=xterm-256color
export PATH=/usr/bin:/bin:/usr/local/bin:/usr/local/git/bin
export PATH=$PATH:/home/grasseh/bin
export PATH=$PATH:/usr/local/heroku/bin:/usr/bin/node
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/games
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export GOPATH=$HOME/projects/go

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-COLORS=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

#Reset -- This Reset all the current colors set
export RESET="$(tput sgr0)"

#Base Colors
BROWN="$(tput setaf 94)"
DARKGREEN="$(tput setaf 64)"
GREEN="$(tput setaf 40)"
LILAC="$(tput setaf 94)"
BLUE="$(tput setaf 51)"

#Bold Colors
BOLD="$(tput bold)"

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-GIT PROMPT=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
GIT_PS1_SHOWDIRTYSTATE="kk" #Display a * If there's a modified/deleted file
GIT_PS1_SHOWUNTRACKEDFILES="kk" #Display a % if there's an untracked file in the director
GIT_PS1_SHOWUPSTREAM="verbose name" #Show Difference with Upstream
