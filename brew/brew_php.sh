#/bin/zsh

echo "check brew PHP..."

brew tap josegonzalez/php
brew tap mcuadros/hhvm

#
# PHP 56
#
brew install php56 --with-mysql  --with-libmysql --with-intl --with-pgsql --with-imap --with-apache
brew link --overwrite php56
sudo pecl install intl
brew install php56-ssh2
brew install php56-xdebug
brew install php56-dbase
brew install php56-mcrypt

#
# PHP 55
#
brew install php55 --with-mysql  --with-libmysql --with-intl --with-pgsql --with-imap --with-apache
brew link --overwrite php55
sudo pecl install intl
brew install icu4c
brew install php55-ssh2
brew install php55-intl
brew install php55-apc
brew install php55-xdebug
brew install php55-dbase
brew install php55-mcrypt

#
# PHP 54
#
#brew install php54 --with-mysql  --with-libmysql --with-pgsql --with-imap --with-apache
#brew link --overwrite php54
#brew install php54-xdebug
#brew install php54-dbase
#brew install php54-ssh2
#brew install php54-intl
#brew install php54-apc
#brew install php54-mcrypt

#
# PHP 52
#
# FIXED ISSUE WITH FREETYPE
#brew rm freetype
#brew install https://raw.github.com/mxcl/homebrew/2ea54422f892c472f78d03a838f53f24de9b2ad8/Library/Formula/freetype.rb
#brew unlink freetype
#brew install freetype
#brew switch freetype 2.4.10
#brew switch freetype 2.5.0.1
#brew switch freetype 2.5.3_1
#brew install php55

#ln -s /usr/local/include/freetype2 /usr/local/include/freetype2/freetype
#brew install php52 --with-mysql  --with-libmysql --with-apache --without-gd
#brew link --overwrite php52


brew install composer
