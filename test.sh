MuninNaam=$(salt -C '* not itv2g-ubu-29.internal.cloudapp.net' network.ip_addrs type=private | grep -oP '.+?(?=:)')
MuninIP=$(salt -C '* not itv2g-ubu-29.internal.cloudapp.net' network.ip_addrs type=private | grep -oP '10.0.[0-9]{1,3}.[0-9]{1,3}')

MuninNaam=($MuninNaam)
MuninIP=($MuninIP)

#echo $MuninNaam
#echo $MuninIP

#for word in $MuninNaam
#do
#       echo $word
#done



#for ip in $MuninIP
#do
#       echo $ip
#done


for ((i=0; i<${#MuninNaam[@]};++i));
do
echo "${MuninNaam[i]}";
echo "${MuninIP[i]}"
echo "[${MuninNaam[i]}]" >> testlog.sh
echo "address ${MuninIP[i]}" >> testlog.sh
echo "use_node_name_yes" >> testlog.sh
done
exit 0

#muninbarrel = "${MuninNaam[i]}"
#if grep -Fxqe "$muninbarrel" /srv/salt/testlog.sh;
#then echo "gevonden"
#else echo "niet gevonden"
#fi