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


# MISC
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /bin/subl
alias gt="kill $(ps aux | grep 'gitlab-tunnel' | awk '{print $2}');ssh gitlab-tunnel -N &"
alias gitpush='function _gitpush(){ git config --get remote.origin.url; git add -A; git commit -a -m "$*"; git push; git log --pretty=format:"%C(yellow)%ae  %C(white)%ar %C(yellow)%s" --date=short --since="24 hours ago"}; _gitpush'
