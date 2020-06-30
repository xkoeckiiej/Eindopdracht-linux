Variabele=$(salt 'itv2g-ubu-1.internal.cloudapp.net' network.ip_addrs type=private)
#echo $Variabele
echo $Variabele | grep -oP '10.0.[0-9]{1,3}.[0-9]{1,3}'