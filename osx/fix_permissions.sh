
echo "Fix permissions..."


sudo chown -R `whoami` ~/.npm
sudo chown -R `whoami` /usr/local/lib/node_modules
sudo chown -R `whoami` /usr/local/include/node

sudo chown -R `whoami` /usr/local
sudo chmod -R g+rwx /usr/local/var/mysql
