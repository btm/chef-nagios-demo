for n in {1..5} ; do
  sudo ifconfig eth0:${n} 172.16.151.5${n} netmask 255.255.255.0
  sudo nrpe -c /etc/nagios/nrpe_fake_${n}.cfg -d
done

