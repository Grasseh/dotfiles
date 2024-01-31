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
# It contains files to be loading on Linux
############################################################################
# Load ssh-agent.
ssh-add -l &>/dev/null
if [ "$?" == 2 ]; then
  test -r ~/.ssh-agent && \
    eval "$(<~/.ssh-agent)" >/dev/null

  ssh-add -l &>/dev/null
  if [ "$?" == 2 ]; then
    (umask 066; ssh-agent > ~/.ssh-agent)
    eval "$(<~/.ssh-agent)" >/dev/null
    ssh-add
  fi
fi
if  [[ $(uname -a | grep "Linux") ]]; then
    . ~/.git-prompt.sh
    . ~/.gh_cli.sh
    . ~/.bash_profile
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/stegag@org.nasdaqomx.com/bin/google-cloud-sdk/path.bash.inc' ]; then . '/home/stegag@org.nasdaqomx.com/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/stegag@org.nasdaqomx.com/bin/google-cloud-sdk/completion.bash.inc' ]; then . '/home/stegag@org.nasdaqomx.com/bin/google-cloud-sdk/completion.bash.inc'; fi
. "$HOME/.cargo/env"
