fortune
#This file allows different set constant variables to be used in bash
#Inspired by Mike Stewart - http://MediaDoneRight.com
#Color formats obtained from http://misc.flogisoft.com/bash/tip_colors_and_formatting 
# ===========
# Path + Env Variable
# ===========
export TERM=xterm-256color
export PATH=/usr/bin:/bin:/usr/local/bin:/usr/local/git/bin
export PATH=/home/grasseh/bin:$PATH
export PATH=$PATH:/usr/local/heroku/bin:/usr/bin/node
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/games
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/local/sbin
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

export CPRIMARY="$BROWN"
export CSECONDARY="$DARKGREEN"
export CTERTIARY="$GREEN"
export CGIT="$BLUE"

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-GIT PROMPT=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
GIT_PS1_SHOWDIRTYSTATE="kk" #Display a * If there's a modified/deleted file
GIT_PS1_SHOWUNTRACKEDFILES="kk" #Display a % if there's an untracked file in the director
GIT_PS1_SHOWUPSTREAM="verbose name" #Show Difference with Upstream
GIT_PS1_SHOWCOLORHINTS="kk" #Add colors?


#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-FUNCTIONS-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#

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

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=ALIASES=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
alias ets='cd ~/ets' 
alias open='xdg-open'
