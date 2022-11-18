#!/bin/sh
#微软云多IP配置
#适用于微软云CentOS7.9-Gen2,其他版本自行测试
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
   echo "#-------------------米老鼠Azure-SS5一键脚本-------------------#"
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

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $b4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $c4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $d4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $e4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $f4 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $a5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $b5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $c5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $d5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $e5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $f5 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $a6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.0.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $b6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.1.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $c6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.2.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $d6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.3.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $e6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.4.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

elif [ $x == $f6 ]
then
   echo "增加网络接口"
cd /etc/sysconfig/network-scripts

for ((i=0, j=5; i <= 14 ; i++, j=j+1))
do
    echo "DEVICE=eth0:$i
BOOTPROTO=static
ONBOOT=yes
IPADDR=10.5.0.$j
NETMASK=255.255.255.0" >ifcfg-eth0:$i
done

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

bash <(curl -Ls https://raw.githubusercontent.com/steamsv/Multi-IPS5/main/install.sh)
