#/bin/zsh

#
# DOC https://gist.github.com/workmad3/6248445
#

echo "check brew cask..."

brew install caskroom/cask/brew-cask
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" jeromelebel-mongohub

brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" caffeine
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" firefox-aurora
brew cask install --appdir="/Applications" gitx-l
brew cask install --appdir="/Applications" growlnotify
brew cask install --appdir="/Applications" iterm2
#brew cask install --appdir="/Applications" omni-graffle-pro
#brew cask install --appdir="/Applications" opera
#brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" slowy
#brew cask install --appdir="/Applications" spotify lastfm
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" textwrangler
brew cask install --appdir="/Applications" transmission
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vlc


open ~/Applications/Alfred\ 2.app
brew cask alfred link

