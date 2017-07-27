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
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=ANEKDOTES=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
alias ancpapi='cp ~/projects/anek/api-anek-js/dist/anek-dash.min.js ~/projects/anek/anekdotes-php/public/assets/lib/anekdotes-dashboard/anek-dash.min.js;cp ~/projects/anek/api-anek-js/dist/anek-dash.css ~/projects/anek/anekdotes-php/public/assets/lib/anekdotes-dashboard/anek-dash.css'
alias anm='php sb db:migrate'
alias ans='php sb db:seed'
alias anr='php sb db:rollback'
alias anom='php sb db migrate'
alias anos='php sb db seed'
alias gpum='git push userver master'
alias gpumf='git push userver master -f'
alias gpud='git push userver dev'
alias gpur='git push userver rc'
alias curlrest='curl -v -H "Accept: application/json" -H "Content-type: application/json" -X'
alias sitebase='cd ~/projects/anek/sitebase-div'
alias transax='cd ~/projects/transax'
alias api='cd ~/projects/anek/api-anek-js'
alias anek='cd ~/projects/anek'
sass_example() {
  echo 'sass --watch assets/scss:assets/css --style compressed';
}
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say flushed;echo "DNS FLUSHED"'
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'
alias sass='sass --watch scss:css --style compressed'
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias sleep='pmset sleepnow'
alias phpdoc='phpdocumentor -d src -d app -t doc --cache-folder="doc/cache"'
alias doc='open doc/index.html'
alias pcf='php-cs-fixer fix --config-file styler.php_cs'
alias bed='sleepnow'
