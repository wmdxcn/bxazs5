#!/bin/sh
#微软云多IP配置
#适用于微软云CentOS7.9-Gen2,其他版本自行测试
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
   echo "#-------------------多ip站群服务器一键搭建脚本-------------------#"
   echo "#                                                             #"
   echo "#-------------------自动绑定对应内网公网ip地址-------------------#"
   echo "#                                                             #"
   echo "#---------------------------开始运行--------------------------#"
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
if [ $(whoami) != "root" ];then
	echo "请使用root权限运行此一键安装命令！"
        echo "切换到root用户：sudo su root"
	exit 1;
fi

wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh
bash install.sh --port=12306 --user=admin --passwd=admin
/etc/init.d/sockd start
/etc/init.d/sockd status
exit 0
