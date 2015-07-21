#!/bin/zsh

while getopts abgnorz o
do  case "$o" in
  a)  . ./zsh/init.sh;
      . ./brew/init.sh;
      . ./git/init.sh;
      . ./osx/init.sh;
      . ./gradle/init.sh;
      . ./npm/init.sh;;
  b)  . ./brew/init.sh;;
  g)  . ./git/init.sh;;
  n)  . ./npm/init.sh;;
  o)  . ./osx/init.sh;;
  r)  . ./gradle/init.sh;;
  z)  . ./zsh/init.sh;;

	[?])	print >&2 "Usage: $0 [-abgonrz]"
  print 'options are'
  print ' a    all'
  print ' b    brew'
  print ' g    git'
  print ' n    npm'
  print ' o    OSX'
  print ' z    zsh'
		exit 1;;
	esac
done

# MISC
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /bin/subl
