MuninNaam=$(salt -C '* not itv2g-ubu-29.internal.cloudapp.net' network.ip_addrs type=private | grep -oP '.+?(?=:)')
MuninIP=$(salt -C '* not itv2g-ubu-29.internal.cloudapp.net' network.ip_addrs type=private | grep -oP '10.0.[0-9]{1,3}.[0-9]{1,3}')

echo $MuninNaam
echo $MuninIP

for word in $MuninNaam
do
echo $word
done

for ip in $MuninIP
do
echo $ip
done