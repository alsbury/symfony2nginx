apt-get -y update
apt-get -y -q install php5-fpm nginx php5 php5-json php5-gd php5-mysql php5-cli
rm /etc/nginx/sites-enabled/default
cp /vagrant/vagrant/files/mysql_default_charset.cnf /etc/mysql/conf.d/default_charset.cnf
cp /vagrant/vagrant/files/nginx_server.conf /etc/nginx/sites-available/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

sed -i "s/user www-data;/user vagrant;/" /etc/nginx/nginx.conf
sed -i "s/user = www-data/user = vagrant/" /etc/php5/fpm/pool.d/www.conf
sed -i "s/group = www-data/group = vagrant/" /etc/php5/fpm/pool.d/www.conf

service nginx restart
service php5-fpm restart