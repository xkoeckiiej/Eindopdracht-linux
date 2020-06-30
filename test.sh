MuninNaam=$(salt 'itv2g-ubu-29.internal.cloudapp.net' network.ip_addrs type=private | grep -oP '.+?(?=:)')
MuninIP=$(salt 'itv2g-ubu-29.internal.cloudapp.net' network.ip_addrs type=private | grep -oP '10.0.[0-9]{1,3}.[0-9]{1,3}')

echo $MuninNaam
echo $MuninIP