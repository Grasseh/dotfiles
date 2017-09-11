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
if  [[ $(uname -a | grep "Linux") ]]; then
    . ~/.git-prompt.sh
    . ~/.bash_profile
fi
