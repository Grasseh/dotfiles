#This file allows different set constant variables to be used in bash
#Inspired by Mike Stewart - http://MediaDoneRight.com
#Color formats obtained from http://misc.flogisoft.com/bash/tip_colors_and_formatting 
# ===========
# Path + Env Variable
# ===========
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/Master/bin:~/.composer/vendor/bin:/Users/stevegagne/pear/bin:
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"
export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:$HOME/npm/bin"
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"
export TERM="xterm-256color"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm


#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-GIT BR=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-COLORS=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

#Reset -- This Reset all the current colors set
export RESET="$(tput sgr0)"

#Base Colors
export BROWN="$(tput setaf 94)"
export DARKGREEN="$(tput setaf 64)"
export GREEN="$(tput setaf 40)"
export PURPLE="$(tput setaf 99)"
export LILAC="$(tput setaf 94)"
export BLUE="$(tput setaf 51)"

#Bold Colors
export BOLD="$(tput bold)"

export CPRIMARY="$PURPLE"
export CSECONDARY="$GREEN"
export CTERTIARY="$LILAC"
export CGIT="$BLUE"
export GITBRANCH="$(parse_git_branch)"
