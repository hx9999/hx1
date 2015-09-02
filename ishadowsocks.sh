wget -O- http://shadowsocks.org/debian/1D27208A.gpg | sudo apt-key add -
echo "deb http://shadowsocks.org/debian wheezy main" >> /etc/apt/sources.list
apt-get update
apt-get -y install shadowsocks-libev
cp shadowsocks-libev.cfg tmp.cfg
#ip4=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0|grep -v inet6|awk '{print $2}'|tr -d "addr:"`
sed -e "s/x.x.x.x/$g_ip4/gi" tmp.cfg >/etc/shadowsocks-libev/config.json
service shadowsocks-libev restart
