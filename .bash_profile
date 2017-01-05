# ---------------------------------------------------------------------
# Same PATH
# ---------------------------------------------------------------------
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/Master/bin:~/.composer/vendor/bin:/Users/stevegagne/pear/bin:
export PATH=/Applications/MAMP/bin/php/php5.6.2/bin:$PATH
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"
export PATH="$PATH:$HOME/npm/bin"
export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"
export TERM="xterm-256color"
#---------------------------------------------------------------------
# Git aliases
# ---------------------------------------------------------------------
# general
alias gs='git status'
alias gfr='git fetch; git rebase;'
alias gf='git fetch'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grh='git reset --hard'
alias ggc='git gc'
# add
alias ga='git add'
alias gaa='git add -A .'
# commit
alias gc='git add -A; git commit -a;'
alias gcm='git commit -m'
# merge
alias gcp='git cherry-pick'
alias gm="git merge --no-ff"
# log
alias gl='git log --graph --abbrev-commit --decorate --date=relative --format=format:'"'"'%C(bold cyan)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(magenta)- %an%C(reset)%C(bold yellow)%d%C(reset)'"'"' --all'
alias gl2='git log --graph --abbrev-commit --decorate --format=format:'"'"'%C(bold cyan)%h%C(reset) - %C(bold green)%aD%C(reset) %C(dim green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n          %C(white)%s%C(reset) %C(magenta)- %an%C(reset)'"'"' --all'
alias grl='git reflog;'
# submodule
alias gsi='git submodule init; git submodule update'
alias gsu='git submodule sync; git submodule update'
alias gss='git submodule sync'
# push
alias gp='git push'
alias gpod='git push origin dev;'
alias gpom='git push origin master;'
alias gpu='git push -u'
alias gpuo='git push -u origin'
alias gphdm='git push heroku dev:master'
alias gphm='git push heroku master'
alias gpldm='git push live dev:master'
alias gplm='git push live master'
alias gpum='git push userver master'
alias gpud='git push userver dev'
alias gpur='git push userver rc'
# branch
alias gch="git checkout"
alias gchb="git checkout -b"
alias gb="git branch"
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gbod='git push origin --delete'
# stash
alias gsh='git stash'
alias gshp='git stash pop'
# tags
alias gpt='git push origin --tags'
alias gt='git tag'
alias gts='git tag show'
alias gta='git tag -a'
# diff
alias gd='git diff'
alias gdw='git diff -w'
alias gdc='git diff --cached'
#bisect
alias gbi="git bisect"
alias gbis="git bisect start"
alias gbib="git bisect bad"
alias gbig="git bisect good"
alias gbir="git bisect reset"
#Remote
alias gre="git remote"
alias grea="git remote add"
alias gres="git remote set-url"
alias greso="git remote set-url origin"
alias grer="git remote remove"
# ---------------------------------------------------------------------
# Other aliases
# ---------------------------------------------------------------------
alias sourcebash='source ~/.bash_profile'
alias editbash='sudo nano ~/.bash_profile'
alias dotfiles='cd ~/dotfiles'
alias projects='cd ~/projects/'
alias ..='cd ..'
alias ...='cd ..; cd ..;'
alias ....='cd ..; cd ..;cd ..;'
alias la='ls -als'
alias edit='subl'
alias ~="cd ~"
alias c='clear'
alias path='echo -e ${PATH//:/\\n}'
alias rmr='sudo rm -R'
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say flushed;echo "DNS FLUSHED"'
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'
alias composerinstall='composer install --prefer-dist'
alias npm='sudo npm'
alias sleep='pmset sleepnow'
alias bed='sleepnow'
alias reload='. ~/.bash_profile'
alias gitgud='echo "[ ] not rekt  [x] rekt"'
alias phpdoc='phpdocumentor -d src -d app -t doc --cache-folder="doc/cache"'
alias sass='sass --watch scss:css --style compressed'
alias cod='open ~/Documents/Call\ of\ Duty\ 4/Call\ of\ Duty\ 4\ Multiplayer.app/'
alias doc='open doc/index.html'
alias notes='vim ~/notes.MD'
alias todo='vim ~/todo.MD'
alias pu='phpunit'
alias ca='composer dumpautoload'
alias ci='composer install'
alias cu='composer update'
alias cr='composer require'
alias pcf='php-cs-fixer fix --config-file styler.php_cs'
alias brails='bin/rails'
# ---------------------------------------------------------------------
# Anekdotes aliases
# ---------------------------------------------------------------------
alias ancpapi='cp ~/projects/anek/api-anek-js/dist/anek-dash.min.js ~/projects/anek/anekdotes-php/public/assets/lib/anekdotes-dashboard/anek-dash.min.js;cp ~/projects/anek/api-anek-js/dist/anek-dash.css ~/projects/anek/anekdotes-php/public/assets/lib/anekdotes-dashboard/anek-dash.css'
alias anm='php sb db:migrate'
alias ans='php sb db:seed'
alias anr='php sb db:rollback'
alias anom='php sb db migrate'
alias anos='php sb db seed'
alias curlrest='curl -v -H "Accept: application/json" -H "Content-type: application/json" -X'
# ---------------------------------------------------------------------
# Directory aliases
# ---------------------------------------------------------------------
alias home='cd ~'
alias sitebase='cd ~/projects/anek/sitebase-div'
alias transax='cd ~/projects/transax'
alias api='cd ~/projects/anek/api-anek-js'
alias grasseh='cd ~/projects/grasseh.com'
alias desktop='cd ~/Desktop'
alias anek='cd ~/projects/anek'

# ---------------------------------------------------------------------
# Functions
# ---------------------------------------------------------------------
sass_example() {
  echo 'sass --watch assets/scss:assets/css --style compressed';
}
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# ---------------------------------------------------------------------
# Source local machine config
# ---------------------------------------------------------------------
if [ -f ~/.env ]; then
  source ~/.env
fi

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

# ---------------------------------------------------------------------
# Prompt
# ---------------------------------------------------------------------
export PS1="\n\[$PURPLE\]\A - \u\[$GREEN\]:\[$BOLD\]\[$LILAC\]\w\[$RESET\]\[$BLUE\] $(parse_git_branch) \[$RESET\] "
export CLICOLOR=1
export LSCOLORS=fxFxBxDxCxegedabagacad

# ---------------------------------------------------------------------
# Default Editor
# ---------------------------------------------------------------------
export EDITOR=/usr/bin/vim

# ---------------------------------------------------------------------
# Default Blocksize for ls etc.
# ---------------------------------------------------------------------
export BLOCKSIZE=1k

# ---------------------------------------------------------------------
# Misc
# ---------------------------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
