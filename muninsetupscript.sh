salt -C '* not itv2g-ubu-29.internal.cloudapp.net' cmd.run 'sudo apt-get update'
salt -C '* not itv2g-ubu-29.internal.cloudapp.net' cmd.run 'sudo apt-get install -y munin-node'
sudo salt -C '* not itv2g-ubu-29.internal.cloudapp.net' state.apply muninsetup

#copy munin config file:
#  file.managed:
#    - name: /etc/munin/munin-node.conf
#    - source: salt://muninfiles/munin-node.conf

#salt -C '* not itv2g-ubu-29.internal.cloudapp.net' cmd.run 'sudo service apache2 restart'
salt -C '* not itv2g-ubu-29.internal.cloudapp.net' cmd.run 'sudo service munin-node restart'
salt -C '* not itv2g-ubu-29.internal.cloudapp.net' cmd.run 'systemctl status munin-node.service'