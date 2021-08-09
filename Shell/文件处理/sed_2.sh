# passwd
cp /etc/passwd .

sed -n '10,20p' passwd
sed -n '10,+5p' passwd
sed -n '/^root/p' passwd
sed -n '/\/sbin\/nologin/p' passwd

sed -n '/^root/,/^yarn/p' passwd
sed -n '10,/^squid/p' passwd
sed -n '/^squid/,10p' passwd

