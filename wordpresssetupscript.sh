#wordpresssetupscript.sh
#Wordpress:
#sudo salt 'itv2g-ubu-2.internal.cloudapp.net' state.apply wordpresssetup
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo apt update'
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo apt install wordpress php libapache2-mod-php mysql-server php-mysql'
#salt 'itv2g-ubu-2.internal.cloudapp.net' mysql.db_create 'wordpress'
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo mysql && GRANT ALL PRIVILEGES ON *.* TO `youri`@`%`;'
#salt 'itv2g-ubu-2.internal.cloudapp.net' mysql.grant_add 'SELECT,INSERT,UPDATE,DELETE,DROP,ALTER' 'wordpress.*' 'wordpress' 'localhost'
#sudo salt 'itv2g-ubu-2.internal.cloudapp.net' state.apply wordpresssetup
#copy wordpress config file:
#  file.managed:
#    - name: /etc/apache2/sites-available/wordpress.conf
#    - source: salt://wordpressfiles/wordpress.conf
#copy wordpress php file:
#  file.managed:
#    - name: /etc/wordpress/config-10.0.7.50.php
#    - source: salt://wordpressfiles/config-10.0.7.50.php
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo a2ensite wordpress'
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo a2enmod rewrite'
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo a2dissite 000-default.conf'
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo service apache2 reload'
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo service mysql start'
#salt 'itv2g-ubu-2.internal.cloudapp.net' mysql.db_exists 'wordpress'
#salt 'itv2g-ubu-2.internal.cloudapp.net' mysql.verify_login wordpress eindopdracht