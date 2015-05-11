#/bin/zsh

echo "check NPM..."

echo NPM `npm -v`
echo Node `node -v`

npm search                                                          # init local index

npm -g install gulp
npm install -g grunt-cli
npm install -g bower

# YO
npm install -g yo
npm install -g generator-webapp
npm install -g generator-angular
npm install -g generator-angular-fullstack
npm install -g generator-react-webpack
npm install -g generator-sails-angular

npm install -g uglify-js
npm install -g uglifycss
npm install -g less
npm install -g coffee
npm install -g coffee-script

npm install -g karma
npm install -g casperjs
npm install -g json2yaml
npm install -g bunyan

npm install -g supervisor
npm install -g nodemon
npm install -g ungit

# EXPRESS
npm install -g express
npm install -g express-generator

# LINT
npm install -g eslint
npm install -g jsonlint
npm install -g htmllint
npm install -g htmllint-cli
