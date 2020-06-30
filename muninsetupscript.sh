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

MuninNaam=$(salt -C '* not itv2g-ubu-29.internal.cloudapp.net' network.ip_addrs type=private | grep -oP '.+?(?=:)')
MuninIP=$(salt -C '* not itv2g-ubu-29.internal.cloudapp.net' network.ip_addrs type=private | grep -oP '10.0.[0-9]{1,3}.[0-9]{1,3}')

MuninNaam=($MuninNaam)
MuninIP=($MuninIP)

for ((i=0; i<${#MuninNaam[@]};++i));
do
#echo "${MuninNaam[i]}";
#echo "${MuninIP[i]}"
echo "[${MuninNaam[i]}]" >> /etc/munin/munin.conf
echo "    address ${MuninIP[i]}" >> /etc/munin/munin.conf
echo "    use_node_name_yes" >> /etc/munin/munin.conf
echo "" >> /etc/munin/munin.conf
done

sudo service apache2 restart
sudo service munin-node restart

exit 0


#muninbarrel = "${MuninNaam[i]}"
#if grep -Fxqe "$muninbarrel" /srv/salt/testlog.sh;
#then
#echo "gevonden"
#else
#echo "niet gevonden"
#fi