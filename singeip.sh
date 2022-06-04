#!/bin/sh
#单ip配置
wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh
bash install.sh --port=20186 --user=miqiboss --passwd=7sjj2jss
/etc/init.d/sockd start
/etc/init.d/sockd status
exit 0
