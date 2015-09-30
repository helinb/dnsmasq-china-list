wget --no-check-certificate -qO - https://easylist-downloads.adblockplus.org/easylist.txt | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/127\.0\.0\.1:' > /etc/dnsmasq.d/easylist.conf
wget --no-check-certificate -qO - https://easylist-downloads.adblockplus.org/chinalist+easylist.txt | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/127\.0\.0\.1:' > /etc/dnsmasq.d/chinalist+easylist.conf
wget --no-check-certificate -qO - https://spam404bl.com/spam404scamlist.txt | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/127\.0\.0\.1:' > /etc/dnsmasq.d/chinalist+easylist.conf
#wget --no-check-certificate -qO - https://raw.githubusercontent.com/nfer/easylistchina_it/master/easylistchina_it.txt | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/127\.0\.0\.1:' > /etc/dnsmasq.d/easylistchina_it.conf
wget --no-check-certificate -qO - https://github.com/gythialy/chinalist/raw/master/my_custom_list.txt | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/127\.0\.0\.1:' > /etc/dnsmasq.d/my_custom_list.conf
wget --no-check-certificate -qO - https://github.com/JinsongVan/chinalist/raw/master/china_mobile_list.txt | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/127\.0\.0\.1:' > /etc/dnsmasq.d/china_mobile_list.conf

wget --no-check-certificate -qO - http://winhelp2002.mvps.org/hosts.txt | awk '{if(/^#/||/^$/) {print $0} else {print "address=/"$2"/"$1"\t"$3,"\n""server=/"$2"/#"}}' > /etc/dnsmasq.d/mvps.conf
#wget --no-check-certificate -qO - http://someonewhocares.org/hosts/hosts | awk '{if(/^#/||/^$/) {print $0} else {print "address=/"$2"/"$1"\t"$3,"\n""server=/"$2"/#"}}' > /etc/dnsmasq.d/someonewhocares.conf
wget --no-check-certificate -qO - http://www.malwaredomainlist.com/hostslist/hosts.txt | awk '{if(/^#/||/^$/) {print $0} else {print "address=/"$2"/"$1"\t"$3,"\n""server=/"$2"/#"}}' > /etc/dnsmasq.d/malwaredomainlist.conf
#wget --no-check-certificate -qO - https://raw.githubusercontent.com/vokins/simpleu/master/hosts > /etc/dnsmasq.d/simpleu.txt
