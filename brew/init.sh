#/bin/zsh

#
# DOC https://gist.github.com/workmad3/6248445
#

echo "check brew..."


if ! which gcc &> /dev/null; then
  echo "Please install OSX command line development tools"
  exit 1
fi

if ! which brew; &> /dev/null; then
	ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

brew tap homebrew/dupes
brew tap homebrew/versions

brew update && brew upgrade

#brew upgrade

brew install zsh zsh-completions zsh-lovers zsh-syntax-highlighting
#sudo bash -c "echo /usr/local/bin/zsh >> /etc/shells"

brew install asciidoc
brew install git git-crypt git-flow gist ungit
brew install hub
brew install python
brew install sbt
brew install git-extras
brew install Caskroom/cask/java
brew install gradle
brew install maven
brew install phantomjs
brew install redis
brew install groovy
brew install ruby
brew install heroku-toolbelt
brew install cloudbees-sdk
brew install wget
brew install dos2unix
brew install siege
brew install graphviz

# Databases
brew install mysql
brew install mysql5-server
brew install mongodb
brew install elasticsearch
#brew install postgresql

# Web servers
brew install memcached
brew install nginx

#brew install varnish
#ln -sfv /usr/local/opt/varnish/*.plist ~/Library/LaunchAgents
#launchctl load ~/Library/LaunchAgents/homebrew.mxcl.varnish.plist

./brew/brew_node.sh
./brew/brew_cask.sh

brew cleanup
