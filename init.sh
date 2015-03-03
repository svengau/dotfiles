#!/bin/zsh

# zsh init
. ./zsh/init.sh

# brew init
. ./brew/init.sh

# git init
. ./git/init.sh

# osx init
. ./osx/init.sh

# gradle init
. ./gradle/init.sh

# NPM init
. ./npm/init.sh


# MISCG
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /bin/subl
alias gt="kill $(ps aux | grep 'gitlab-tunnel' | awk '{print $2}');ssh gitlab-tunnel -N &"

alias gitpush3="echo \"$*\" && git config --get remote.origin.url "

alias gitpush='git config --get remote.origin.url && echo "$*" && git add -A && git commit -a -m "$*" && git push'


alias='git config --get remote.origin.url && git add -A && git commit -a -m "$*" && git push'
