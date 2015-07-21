#/bin/zsh

echo "check brew Node..."

brew install node
brew link node

sudo ln -s /usr/local/bin/node /usr/bin/node
