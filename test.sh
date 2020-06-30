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


for ((i=0; i<${#MuninNaam[@]};++i)); do
echo "${MuninNaam[i]}";
echo "${MuninIP[i]}"
echo "[${MuninNaam[i]}]" >> test.sh
echo "address ${MuninIP[i]}" >> test.sh
echo "use_node_name_yes" >> test.sh
done

exit 0
#[itv2g-ubu-30.internal.cloudapp.net]
#address 10.0.7.49
#use_node_name_yes
#[itv2g-ubu-1.internal.cloudapp.net]
#address 10.0.7.78
#use_node_name_yes
#[itv2g-ubu-2.internal.cloudapp.net]
#address 10.0.7.50
#use_node_name_yes