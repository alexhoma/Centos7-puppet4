dir='/vagrant/modules/'

puppet module install example42/yum --modulepath $dir --version 2.1.25;
puppet module install example42/php  --modulepath $dir --version 2.0.25;
puppet module install puppetlabs-apache --modulepath $dir --version 1.6.0;
puppet module install puppetlabs/mysql --modulepath $dir --version 3.6.1;
puppet module install example42/memcached --modulepath $dir --version 3.0.5;
puppet module install crayfishx/firewalld --modulepath $dir --version 1.2.3;
puppet module install example42-timezone --modulepath $dir --version 2.0.13;
puppet module install example42/ntp --modulepath $dir --version 2.0.15;

yum install -y git
git clone https://bitbucket.org/pabloros/mysite16.git /vagrant/modules/mysite16

yum install -y http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
yum install -y mysql-community-server
systemctl start mysqld
systemctl enable mysqld.service

sudo yum install php-mysql

exit 0;
