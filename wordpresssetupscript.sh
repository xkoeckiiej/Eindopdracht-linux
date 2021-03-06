#wordpresssetupscript.sh
#Wordpress:

WordpressIP=$(salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' network.ip_addrs type=private | grep -oP '10.0.[0-9]{1,3}.[0-9]{1,3}')
cp /srv/salt/wordpressfiles/config-10.0.7.50.php /srv/salt/wordpressfiles/config-hoi.php
rm /srv/salt/wordpressfiles/config-"$WordpressIP".php
mv /srv/salt/wordpressfiles/config-hoi.php /srv/salt/wordpressfiles/config-"$WordpressIP".php

#sudo salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' state.apply wordpresssetup
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' cmd.run 'sudo apt update'
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' cmd.run 'sudo apt install wordpress php libapache2-mod-php mysql-server php-mysql -y'
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' mysql.db_create 'wordpress -y'
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo mysql && GRANT ALL PRIVILEGES ON *.* TO `youri`@`%`;'
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' mysql.grant_add 'SELECT,INSERT,UPDATE,DELETE,DROP,ALTER' 'wordpress.*' 'wordpress' 'localhost'
sudo salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' state.apply wordpresssetup
#copy wordpress config file:
#  file.managed:
#    - name: /etc/apache2/sites-available/wordpress.conf
#    - source: salt://wordpressfiles/wordpress.conf
#copy wordpress php file:
#  file.managed:
#    - name: /etc/wordpress/config-10.0.7.50.php
#    - source: salt://wordpressfiles/config-10.0.7.50.php
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' cmd.run 'sudo a2ensite wordpress'
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' cmd.run 'sudo a2enmod rewrite'
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' cmd.run 'sudo a2dissite 000-default.conf'
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' cmd.run 'sudo service apache2 reload'
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' cmd.run 'sudo service mysql start'
salt 'itv2g-ubu-375112presentatietest2.internal.cloudapp.net' mysql.db_exists 'wordpress'