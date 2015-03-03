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
