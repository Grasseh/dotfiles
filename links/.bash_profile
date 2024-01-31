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
setxkbmap ca multix
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
alias grs='git restore --staged'
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
alias glw='gl --since "1 week ago" --author "Steve Gagné"'
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
alias gchp="git checkout production"
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
alias bigfiles="sudo find / -xdev -type f -size +200M -exec du -bh {} \;"
alias brails='bin/rails'
alias bril='xrandr --output eDP-1 --brightness'
alias brih='xrandr --output HDMI-1 --brightness'
alias c='clear'
alias ca='composer dumpautoload'
alias ccip='circleci config process .circleci/config.yml > process.yml'
alias ccie='circleci local execute -c process.yml --job' #SPACE JOBNAME
alias ci='composer install'
alias cr='composer require'
alias cu='composer update'
alias deploy="ssh-add && ssh -A root@devops.metrio.net"
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dpa="docker system prune -a --volumes -f"
alias dropdb="mongo metrio_development --eval \"db.dropDatabase()\"; mongo metrio_prod_copy --eval \"db.dropDatabase()\""
alias ft='printf "\e[?2004l"' #Fix terminal pasting
alias fiap='frontend_is_always_problems'
alias fixvim='(cd /usr/bin && sudo rm vim && sudo ln -s /usr/local/bin/vim)'
alias gitgud='echo "[ ] not rekt  [x] rekt"'
alias googlesux='sudo rm apt/sources.list.d/google-chrome.list'
alias karb='killall -s SIGKILL ruby && pkill -9 -f gulp; killall node; killall webpack; killall gulp'
alias kapy='killall -s SIGKILL python3'
alias la='ls -alsh'
alias mdbr='sudo service mongod restart'
alias mdbs='mongod --dbpath /var/lib/mongo --logpath /var/log/mongodb/mongod.log --replSet rs0 --fork'
alias notes='vim ~/notes.MD'
alias omcb='overmind connect backend'
alias omd='CLIENT=devcli overmind s'
alias oms='overmind s'
alias path='echo -e ${PATH//:/\\n}'
alias pcov='poetry run pytest --cov publishing --cov-branch tests/'
alias pmp='poetry run mypy $(find . -name "*.py" -not -path "./.venv/*" -not -path "./alembic/*" | xargs)'
alias ppc='poetry run pre-commit run --all-files'
alias ppt='poetry run pytest'
alias pu='phpunit'
alias rdw='bin/rails dev:watch'
alias rdwf='bin/rails dev:watch_full'
alias rdd='CLIENT=devcli bin/rails dev:watch'
alias rddf='CLIENT=devcli bin/rails dev:watch_full'
alias rdprod='DEBUG_PRODUCTION=true RAILS_ENV=production bin/rails s'
alias reload='c; . ~/.bash_profile'
alias rebuild='thor clients:tasks:config:rebuild'
alias rmr='sudo rm -R'
alias rms='yes | find . -name "*.swp" -exec rm -i "{}" \;'
alias sourcebash='source ~/.bash_profile'
alias ssa="ssh-add ~/.ssh/id_rsa"
alias todo='vim ~/todo.MD'
alias v='vim'
# ---------------------------------------------------------------------
# Directory aliases
# ---------------------------------------------------------------------
alias clients='cd ~/projects/clients'
alias desktop='cd ~/Desktop'
alias dotfiles='cd ~/dotfiles'
alias fougere='cd ~/projects/fougere'
alias grasseh='cd ~/projects/grasseh.com'
alias home='cd ~'
alias projects='cd ~/projects/'
alias m1='cd ~/projects/metrio/backend'
alias m2='cd ~/projects/metrio2/backend'
alias m3='cd ~/projects/metrio3/backend'
alias m4='cd ~/projects/metrio4/backend'
alias m5='cd ~/projects/metrio5/backend'
alias m1d='cd ~/projects/metrio/devops'
alias m2d='cd ~/projects/metrio2/devops'
alias m3d='cd ~/projects/metrio3/devops'
alias m4d='cd ~/projects/metrio4/devops'
alias m5d='cd ~/projects/metrio5/devops'
alias p1='cd ~/projects/publishing'
alias p2='cd ~/projects/publishing2'
alias p3='cd ~/projects/publishing3'
alias p4='cd ~/projects/publishing4'
alias p5='cd ~/projects/publishing5'
alias lm='~/metrio.sh'

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
# WTF even is frontend?
# ---------------------------------------------------------------------
frontend_is_always_problems() {
  echo "Solving classic frontend problems"
  cd ..
  cd frontend/metrio3
  rm -rf dist tmp node_modules
  yarn cache clean
  yarn install
  cd ../..
  cd frontend/metrio4
  rm -rf dist node_modules
  yarn cache clean
  yarn install
  cd ../..
  cd frontend/server
  rm -rf dist node_modules
  yarn cache clean
  yarn install
  cd ../..
  echo "Yo. Next time just rm -rf the frontend folder"
}

# QA

mqa() {
  firefox https://kruger.metrio.net/super_login
  firefox https://bonduelle.metrio.net/super_login
  firefox https://up.metrio.net/super_login
  firefox https://celanese.metrio.net/super_login
  firefox https://decathlon.metrio.net/super_login
  firefox https://svb.metrio.net/super_login
  firefox https://cn.metrio.net/super_login
  firefox https://amq.metrio.net/super_login
  firefox https://brp.metrio.net/super_login
  firefox https://bmo.metrio.net/super_login

  echo "QA:
Clients login, CSS compilation on all servers and custom home pages (connect and check home page):
 - Canada: kruger.metrio.net/super_login :white_check_mark:
 - France: bonduelle.metrio.net/super_login :white_check_mark:
 - UP: up.metrio.net/super_login :white_check_mark:
 - Celanese: celanese.metrio.net/super_login :white_check_mark:
 - Decathlon: decathlon.metrio.net/super_login :white_check_mark:
 - SVB: svb.metrio.net/super_login :white_check_mark:
 - CN: cn.metrio.net/super_login :white_check_mark:
 - AMQ: amq.metrio.net/super_login :white_check_mark:
 - BRP: brp.metrio.net/super_login :white_check_mark:
 - BMO: bmo.metrio.net/super_login :white_check_mark:"
}

mqa2() {
  firefox https://up.metrio.net/indicators/p2_personne
  firefox https://kruger.metrio.net/indicators/overview_by_business_unit/overview_ppd/overview_multi_wayagamack
  firefox https://www.delivering-responsibly.cn.ca/indicators/people/data_supplement/people_data_supplement
  firefox https://bonduelle.metrio.net/indicators/resources_humaines
  firefox https://decathlon.metrio.net/admin/subjects
  firefox https://amq.metrio.net/admin/subjects/cohabitation_sub
  firefox https://brp.metrio.net/admin/subjects/en3_energy_consumption_within_the_organization_in_gj_sub
  firefox https://bmo.metrio.net/admin/subjects/diversity_and_inclusion_2

  echo "Custom indicator: up.metrio.net/indicators/p2_personne :white_check_mark:
- Multi indicator: kruger.metrio.net/indicators/overview_by_business_unit/overview_ppd/overview_multi_wayagamack :white_check_mark:
- Table indicator: www.delivering-responsibly.cn.ca/indicators/people/data_supplement/people_data_supplement :white_check_mark:
- Graph indicator: bonduelle.metrio.net/indicators/resources_humaines :white_check_mark:
- Data entry index: decathlon.metrio.net/admin/subjects :white_check_mark:
- Data entry for post value: amq.metrio.net/admin/subjects/cohabitation_sub :white_check_mark:
- Data entry for multi and single entries: brp.metrio.net/admin/subjects/en3_energy_consumption_within_the_organization_in_gj_sub :white_check_mark:
- Data entry with single_layout: bmo.metrio.net/admin/subjects/diversity_and_inclusion_2 :white_check_mark:"
}

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
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
#RbEnv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
#NodeEnv
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
eval "$(nodenv init -)"
#pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
. "$HOME/.cargo/env"
export PATH="$HOME/bin/google-cloud-sdk/bin:$PATH"

export GITHUB_REPO_TOKEN="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"
