###########################################################################
#    .
#   /|\
#  / |/\
# | \|'.|
# \.'|/ /
#  \'|'/
#   `|´
#    |
# This file was written by Steve "Grasseh" Gagné and can be reused for free.
# It contains aliases, functions and variables meant to be used on all systems
############################################################################
# ---------------------------------------------------------------------
# Distro Specific Bash_profile stuff
# ---------------------------------------------------------------------
source ~/.bash_aliases
screenfetch -E -c 10,13
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
alias gc='git add -A; git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
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
alias gpf='git push -f'
alias gpuo='git push -u origin'
alias gphdm='git push heroku dev:master'
alias gphm='git push heroku master'
alias gpldm='git push live dev:master'
alias gplm='git push live master'
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
alias gtd='git tag -d'
alias gtl='git tag -l'
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
#more
alias gpr="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d; git remote prune origin" #Prune branches that are merged, as well as their remotes
# ---------------------------------------------------------------------
# Other aliases
# ---------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ..; cd ..;'
alias ....='cd ..; cd ..;cd ..;'
alias ~="cd ~"
alias aliases='vim ~/dotfiles/links/.bash_profile'
alias brails='bin/rails'
alias c='clear'
alias ca='composer dumpautoload'
alias ci='composer install'
alias cr='composer require'
alias cu='composer update'
alias deploy="ssh-add && ssh -A root@devops.metrio.net"
alias ft='printf "\e[?2004l"' #Fix terminal pasting
alias gitgud='echo "[ ] not rekt  [x] rekt"'
alias karb='killall ruby'
alias la='ls -alsh'
alias notes='vim ~/notes.MD'
alias path='echo -e ${PATH//:/\\n}'
alias pu='phpunit'
alias rdw='rails dev:watch'
alias rdd='CLIENT=devcli rails dev:watch'
alias reload='c; . ~/.bash_profile'
alias rmr='sudo rm -R'
alias sourcebash='source ~/.bash_profile'
alias todo='vim ~/todo.MD'
alias v='vim'
# ---------------------------------------------------------------------
# Directory aliases
# ---------------------------------------------------------------------
alias desktop='cd ~/Desktop'
alias dotfiles='cd ~/dotfiles'
alias grasseh='cd ~/projects/grasseh.com'
alias home='cd ~'
alias projects='cd ~/projects/'
alias metrio='cd ~/projects/metrio'

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-COLORS=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

# ---------------------------------------------------------------------
# Prompt
# ---------------------------------------------------------------------
prompt_cmd () {
    LAST_STATUS=$?
    PS1="\n\[$CPRIMARY\]\A - "
    PS1+="\u@\h\[$CSECONDARY\]:"
    PS1+="\[$BOLD\]\[$CTERTIARY\]\w"
    PS1+="\[$RESET\]\[$GIT\] "
    if  [[ $(uname -a | grep "Linux") ]]; then
        PS1+="$(__git_ps1)"
    fi
    if  [[ $(uname -a | grep "Darwin") ]]; then
        PS1+="$(parse_git_branch)"
    fi
    PS1+=" \[$RESET\] "
}
PROMPT_COMMAND='prompt_cmd'
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
#RbEnv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
#NodeEnv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

#FUCK
eval $(thefuck --alias)
