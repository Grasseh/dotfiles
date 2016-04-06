# ===========
# Path
# ===========
export PATH=/usr/bin:/bin:/usr/local/bin:/usr/local/git/bin:
# ---------------------------------------------------------------------
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
alias gass='git update-index --assume-unchanged'
alias gassu='git update-index --no-assume-unchanged'
alias gassl='!git ls-files -v | grep ^h | cut -c 3-'
# log
alias gl='git log --graph --abbrev-commit --decorate --date=relative --format=format:'"'"'%C(bold cyan)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(magenta)- %an%C(reset)%C(bold yellow)%d%C(reset)'"'"' --all'
alias gl2='git log --graph --abbrev-commit --decorate --format=format:'"'"'%C(bold cyan)%h%C(reset) - %C(bold green)%aD%C(reset) %C(dim green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n          %C(white)%s%C(reset) %C(magenta)- %an%C(reset)'"'"' --all'
alias grl='git reflog;'
# submodule
alias gsi='git submodule init; git submodule update'
alias gsu='git submodule sync; git submodule update'
alias gss='git submodule sync'
# push
alias gp='git push;'
alias gpod='git push origin dev;'
alias gpom='git push origin master;'
# branch
alias gch="git checkout"
alias gchb="git checkout -b"
alias gb="git branch"
alias gba='git branch -a'
alias gbd='git branch -D'
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
alias gdc='git diff --cached'
#bisect
alias gbi='git bisect'
alias gbig='git bisect good'
alias gbib='git bisect bad'

# ---------------------------------------------------------------------
# Other aliases
# ---------------------------------------------------------------------
alias dotfiles='cd ~/dotfiles'
alias ..='cd ..'
alias la='ls -als --color'
alias ~="cd ~"
alias c='clear'
alias path='echo -e ${PATH//:/\\n}'
alias rmr='sudo rm -R'
alias reload='. ~/.bash_profile'
alias gitgud='echo "[ ] not rekt  [x] rekt"'

# ---------------------------------------------------------------------
# Directory aliases
# ---------------------------------------------------------------------
alias home='cd ~'
alias grasseh='cd ~/projects/grasseh.com'
alias desktop='cd ~/Desktop'
alias ets='cd ~/ets' 

# ---------------------------------------------------------------------
# Default Editor
# ---------------------------------------------------------------------
export EDITOR=/usr/bin/vim


# ---------------------------------------------------------------------
# Functions
# ---------------------------------------------------------------------

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

make_site(){
    sudo mkdir ~/tmp
    #Generate Apache Config File
    sudo cp ~/dotfiles/apache/base.loc.conf ~/tmp/$1.loc.conf
    sudo perl -pi -e 's/#Website#/'$1'/g' ~/tmp/$1.loc.conf
    sudo mv ~/tmp/$1.loc.conf /etc/apache2/sites-available/$1.loc.conf
    #Create Apache Directory 
    sudo mkdir /var/www/$1.loc
    sudo mkdir ~/projects/$1.com
    sudo ln -sf ~/projects/$1.com /var/www/$1.loc/public_html;
    sudo chown -R $USER:$USER /var/www/$1.loc/public_html
    #Enable site
    sudo a2ensite $1.loc.conf
    sudo service apache2 restart
    #Setup hosts file
    sudo -- sh -c "echo 127.0.0.1 "$1".loc >> /etc/hosts"
    sudo -- sh -c "echo 127.0.0.1 www."$1".loc >> /etc/hosts"
    sudo chmod -R 777 ~/projects 
    sudo rm -d -r -f ~/tmp
}

delete_site(){
    #UnSetup hosts file   
    sudo perl -ni.bak -e "print unless /127.0.0.1 www."$1".loc/" /etc/hosts
    sudo perl -ni.bak -e "print unless /127.0.0.1 "$1".loc/" /etc/hosts
    #Disable site
    sudo a2dissite $1.loc.conf
    sudo service apache2 restart
    #Remove Apache Directory
    sudo rm -r -f -d /var/www/$1.loc
    #Remove Apache Config
    sudo rm -f /etc/apache2/sites-available/$1.loc.conf
}

# ---------------------------------------------------------------------
# Prompt
# ---------------------------------------------------------------------
export PS1="\[\e[38;5;64m\]\u\[\e[m\]:\[\e[32;1m\]\w\[\e[m\] \[\e[38;5;40m\]\$(parse_git_branch) | \[\e[m\] "
export CLICOLOR=1
export LSCOLORS=fxFxBxDxCxegedabagacad
