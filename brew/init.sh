#/bin/zsh

echo "check brew..."

#ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update && brew upgrade

brew tap homebrew/dupes
brew tap homebrew/versions

#brew upgrade

brew install zsh zsh-completions zsh-lovers zsh-syntax-highlighting
sudo bash -c "echo /usr/local/bin/zsh >> /etc/shells"

brew install asciidoc
brew install git git-crypt git-flow gist
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


# BREW CASK
brew install caskroom/cask/brew-cask
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" alfred
open ~/Applications/Alfred\ 2.app
brew cask alfred link
brew cask install --appdir="/Applications" textwrangler
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" virtualbox vagrant
brew cask install --appdir="/Applications" jeromelebel-mongohub

#brew cask install --appdir="/Applications" spotify lastfm
#brew cask install --appdir="/Applications" iterm2

./brew/brew_node.sh

brew cleanup
