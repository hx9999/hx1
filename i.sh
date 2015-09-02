apt-get -y install htop bmon tmux  nginx mldonkey-server

g_ip4=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0|grep -v inet6|awk '{print $2}'|tr -d "addr:"`  
export g_ip4

./ishadowsocks.sh
