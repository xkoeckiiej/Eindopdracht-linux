#Youri Sanders 375112

#1. Packages installeren
sudo apt-get update
sudo apt-get install -y apache2 apache2-utils
sudo apt-get install -y libcgi-fast-perl libapache2-mod-fcgid
sudo apt-get install -y munin

#2. Controle van installatie
/usr/sbin/apachectl -M | grep -i cgi
#verwachte output
#fcgid_module (shared)



#3. Configuratie van munin
# !!! Er moet nog een commando bij waarbij je de htmldir etc comment
# https://www.digitalocean.com/community/tutorials/how-to-install-the-munin-monitoring-tool-on-ubuntu-14-04

# echo 'dbdir    /var/lib/munin' >> /etc/munin/munin.conf
# echo 'htmldir    /var/www/munin' >> /etc/munin/munin.conf
# echo 'logdir        /var/log/munin' >> /etc/munin/munin.conf
# echo 'rundir        /var/run/munin' >> /etc/munin/munin.conf
# echo 'tmpldir     /etc/munin/templates' >> /etc/munin/munin.conf
# sed -i 's/localhost.localdomain/YouriMaster/g' /etc/munin/munin.conf

# #apache voor munin aanpassen
# sudo nano apache.conf
# !!! er moet nog een commando bij die deze commandos de bestaande er uithaalt
# echo '<Directory /var/www/munin>    /var/lib/munin' >> /etc/munin/apache.conf
# echo '#Allow from localhost 127.0.0.0/8 ::1    /var/lib/munin' >> /etc/munin/apache.conf
# echo '#Allow from all   /var/lib/munin' >> /etc/munin/apache.conf
# echo '#Options None    /var/lib/munin' >> /etc/munin/apache.conf
# echo 'Require all granted    /var/lib/munin' >> /etc/munin/apache.conf
# echo 'Options FollowSymLinks SymLinksIfOwnerMatch    /var/lib/munin' >> /etc/munin/apache.conf
# echo '#Order allow,deny    /var/lib/munin' >> /etc/munin/apache.conf

# echo '<Location /munin-cgi/munin-cgi-graph>    /var/lib/munin' >> /etc/munin/apache.conf
# echo '#Order allow,deny    /var/lib/munin' >> /etc/munin/apache.conf
# echo '#Allow from localhost 127.0.0.0/8 ::1   /var/lib/munin' >> /etc/munin/apache.conf
# echo 'Require all granted    /var/lib/munin' >> /etc/munin/apache.conf
# echo 'Options FollowSymLinks SymLinksIfOwnerMatch   /var/lib/munin' >> /etc/munin/apache.conf

# echo '<Location /munin-cgi/munin-cgi-html>    /var/lib/munin' >> /etc/munin/apache.conf
# echo '#Order allow,deny    /var/lib/munin' >> /etc/munin/apache.conf
# echo '#Allow from localhost 127.0.0.0/8 ::1   /var/lib/munin' >> /etc/munin/apache.conf
# echo 'Require all granted    /var/lib/munin' >> /etc/munin/apache.conf
# echo 'Options FollowSymLinks SymLinksIfOwnerMatch    /var/lib/munin' >> /etc/munin/apache.conf

# sudo nano apache24.conf
# #On checking, our Support Engineers found a bad setting in the file /etc/munin/apache24.conf.
# #
# #So, we opened the file apache24.conf and changed the following lines.
# #
# #Require local
# #Options None
# !!! de lijn van alias moet op twee plaatsen worden aangepast

# echo 'Alias /munin /var/www/munin' >> apache24.conf
# echo 'Require all granted    /var/lib/munin' >> /etc/munin/apache24.conf
# echo 'Options FollowSymLinks SymLinksIfOwnerMatch    /var/lib/munin' >> /etc/munin/apache24.conf
# chmod 755 /var/www/munin #anders krijg je error 403
# sudo service apache2 restart

#configfiles aanpassen op de makkelijke manier
cat padnaarmuninconfmaster > /etc/munin/munin.conf
cat padnaarapacheconfmaster > /etc/munin/apache.conf
cat padnaarapache24confmaster > /etc/munin/apache24.conf

#4. vereisten voor munin
sudo mkdir /var/www/munin
sudo chown munin:munin /var/www/munin


