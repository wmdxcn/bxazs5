#!/bin/sh
#微软云多IP配置ss5
#适用于微软云CentOS7.9-Gen2,其他版本自行测试
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
   echo "#--------------------佰寻Azure-SS5一键脚本--------------------#"
   echo "#                                                             #"
   echo "#-------------------支持10.0.0.4至10.5.0.19-------------------#"
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

x=$(ip addr | grep -E -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -E -v "^127\.|^255\.|^0\." | head -n 1)
a4=10.0.0.4
b4=10.1.0.4
c4=10.2.0.4
d4=10.3.0.4
e4=10.4.0.4
f4=10.5.0.4
a5=10.0.0.5
b5=10.1.0.5
c5=10.2.0.5
d5=10.3.0.5
e5=10.4.0.5
f5=10.5.0.5
a6=10.0.0.6
b6=10.1.0.6
c6=10.2.0.6
d6=10.3.0.6
e6=10.4.0.6
f6=10.5.0.6

if [ $x == $a4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $b4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $c4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $d4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $e4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $f4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $a5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $b5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $c5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $d5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $e5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $f5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $a6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $b6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $c6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $d6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $e6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $f6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

echo 'DEVICE=eth0:0
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.11
NETMASK=255.255.255.0' >ifcfg-eth0:0

echo 'DEVICE=eth0:1
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.12
NETMASK=255.255.255.0' >ifcfg-eth0:1

echo 'DEVICE=eth0:2
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.13
NETMASK=255.255.255.0' >ifcfg-eth0:2

echo 'DEVICE=eth0:3
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.14
NETMASK=255.255.255.0' >ifcfg-eth0:3
echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

else
   echo ""
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
   echo "#---------------------没找到符合的ip地址----------------------#"
   echo ""
   echo "#------------------当前ip地址为：$x-------------------#"
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
   exit 1
fi

wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh
clear
echo "设置S5端口用户名和密码"
echo -e "\033[31m端口(1-65535):\033[0m"
read port
echo -e "\033[31m用户名:\033[0m"
read username
echo -e "\033[31m密码:\033[0m"
read passwd
bash install.sh --port=$port --user=$username --passwd=$passwd
/etc/init.d/sockd start
/etc/init.d/sockd status
exit 0