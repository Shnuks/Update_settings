#!/bin/bash
version='1.2'
hostname=$(hostname)
echo -e "\e[44m$hostname - BEGGINING UPDATE"

CURDATE=`date`
RED='\e[01;31m'
echo -e "##   ${RED} $CURDATE ${BLUE}"
/usr/bin/killall puppet -9 /usr/bin/killall puppet -9 &>/dev/null
/usr/bin/killall apt-get -9 &>/dev/null
/opt/puppetlabs/bin/puppet agent --test --skip_tags fivebox-ui-terminal-service --waitforcert 1
echo -e "\e[44m$hostname - END UPDATE"
read -n 1
