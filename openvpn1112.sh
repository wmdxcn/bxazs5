#!/bin/sh
#微软云多IP配置ss5
#适用于微软云CentOS7.9-Gen2,其他版本自行测试
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
   echo "#------------------佰寻Azure-OPENVPN一键脚本-------------------#"
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

echo "重启网络服务"
/etc/init.d/network restart
echo "网络接口信息"
ifconfig

echo "安装Docker及环境"
wget -qO- get.docker.com | bash
systemctl start docker
systemctl enable docker
docker version

echo "配置及启动"
cd /
mkdir openvpn
cd openvpn
mkdir config
wget https://github.com/wmdxcn/bxazs5/raw/main/docker-compose.yml
curl -L https://get.daocloud.io/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo "将当前用户加入docker组中"
gpasswd -a $USER docker
echo "更新用户组"
docker-compose up -d

echo "防火墙配置"
iptables -t nat -I POSTROUTING -p all -s 172.10.107.0/24 -j SNAT --to-source 10.0.0.11
iptables -t nat -I POSTROUTING -p all -s 172.10.108.0/24 -j SNAT --to-source 10.0.0.12

exit 0
