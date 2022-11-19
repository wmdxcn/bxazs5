#!/bin/bash
#stty erase ^H

#fonts color
Green="\033[32m"
Red="\033[31m"
Yellow="\033[33m"
GreenBG="\033[42;37m"
RedBG="\033[41;37m"
Font="\033[0m"

if grep -Eqi "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
    echo ""
else
    echo "脚本目前仅支持Centos7"
    exit 1
fi

judge(){
    if [[ $? -eq 0 ]];then
        echo -e "${OK} ${GreenBG} $1 完成 ${Font}"
        sleep 1
    else
        echo -e "${Error} ${RedBG} $1 失败${Font}"
        exit 1
    fi
}

install_socks5(){
    mkdir -p /etc/socks5
    if [[ -f /etc/socks5/socks5 ]];then
        echo "已经下载socks5"
    else
        wget https://github.com/steamsv/Multi-IPS5/raw/main/socks5 -O /etc/socks5/socks5
        judge "下载 socks5"
        chmod +x /etc/socks5/socks5
    fi
    path=`pwd`
    bindip1=10.0.0.4
    bindip2=10.0.0.11
    bindip2=10.0.0.12
    port1=12306
    port2=12307
    port3=12308
    sendthrough1=10.0.0.4
    sendthrough2=10.0.0.11
    sendthrough2=10.0.0.12
    username=bx110
    password=bx110
    auth=password

read -r -d '' config1 <<- EOF
{
    "inbound":{
        "listen" : "${bindip1}",
        "port" : ${port1},
        "protocol" : "socks",
        "settings" : {
            "auth" : "${auth}",
            "accounts": [
                {
                    "user": "${username}",
                    "pass": "${password}"
                }
            ],
            "udp" : true,
            "ip" : "127.0.0.1"
        }
    },
    "outbound": {
        "sendThrough": "${sendthrough1}",
        "protocol": "freedom",
        "settings": {}
    }
}
EOF

echo ${config1} > /etc/socks5/config_$port1.json

execstart="ExecStart=/etc/socks5/socks5 -config /etc/socks5/config_$port1.json"
cat > /etc/systemd/system/socks5_$port1.service << EOF                                                                                               
[Unit]
Description=socks5_$port1 Service
After=network.target
Wants=network.target

[Service]
Type=simple
PIDFile=/run/socks5_$port1.pid
$execstart
Restart=on-failure
# Don't restart in the case of configuration error
RestartPreventExitStatus=23

[Install]
WantedBy=multi-user.target
EOF

    systemctl daemon-reload
    systemctl restart socks5_$port1
    systemctl enable socks5_$port1
    sleep 1
    systemctl status socks5_$port1
    echo "安装完成"

    
    echo "配置类型:socks5 监听地址:$bindip1 监听端口:$port1 出口ip:$sendthrough1 用户名:$username 密码:$password" >> /etc/socks5/socks5_installd
    
    read -r -d '' config2 <<- EOF
{
    "inbound":{
        "listen" : "${bindip2}",
        "port" : ${port2},
        "protocol" : "socks",
        "settings" : {
            "auth" : "${auth}",
            "accounts": [
                {
                    "user": "${username}",
                    "pass": "${password}"
                }
            ],
            "udp" : true,
            "ip" : "127.0.0.1"
        }
    },
    "outbound": {
        "sendThrough": "${sendthrough2}",
        "protocol": "freedom",
        "settings": {}
    }
}
EOF

echo ${config2} > /etc/socks5/config_$port2.json

execstart="ExecStart=/etc/socks5/socks5 -config /etc/socks5/config_$port2.json"
cat > /etc/systemd/system/socks5_$port2.service << EOF                                                                                               
[Unit]
Description=socks5_$port2 Service
After=network.target
Wants=network.target

[Service]
Type=simple
PIDFile=/run/socks5_$port2.pid
$execstart
Restart=on-failure
# Don't restart in the case of configuration error
RestartPreventExitStatus=23

[Install]
WantedBy=multi-user.target
EOF

    systemctl daemon-reload
    systemctl restart socks5_$port2
    systemctl enable socks5_$port2
    sleep 1
    systemctl status socks5_$port2
    echo "安装完成"

    
    echo "配置类型:socks5 监听地址:$bindip2 监听端口:$port2 出口ip:$sendthrough2 用户名:$username 密码:$password" >> /etc/socks5/socks5_installd
    
    read -r -d '' config3 <<- EOF
{
    "inbound":{
        "listen" : "${bindip3}",
        "port" : ${port3},
        "protocol" : "socks",
        "settings" : {
            "auth" : "${auth}",
            "accounts": [
                {
                    "user": "${username}",
                    "pass": "${password}"
                }
            ],
            "udp" : true,
            "ip" : "127.0.0.1"
        }
    },
    "outbound": {
        "sendThrough": "${sendthrough3}",
        "protocol": "freedom",
        "settings": {}
    }
}
EOF

echo ${config3} > /etc/socks5/config_$port3.json

execstart="ExecStart=/etc/socks5/socks5 -config /etc/socks5/config_$port3.json"
cat > /etc/systemd/system/socks5_$port3.service << EOF                                                                                               
[Unit]
Description=socks5_$port3 Service
After=network.target
Wants=network.target

[Service]
Type=simple
PIDFile=/run/socks5_$port3.pid
$execstart
Restart=on-failure
# Don't restart in the case of configuration error
RestartPreventExitStatus=23

[Install]
WantedBy=multi-user.target
EOF

    systemctl daemon-reload
    systemctl restart socks5_$port3
    systemctl enable socks5_$port3
    sleep 1
    systemctl status socks5_$port3
    echo "安装完成"

    
    echo "配置类型:socks5 监听地址:$bindip3 监听端口:$port3 出口ip:$sendthrough3 用户名:$username 密码:$password" >> /etc/socks5/socks5_installd
}

list_socks5(){
    if [[ -f /etc/socks5/socks5_installd ]];then
        echo 
    else 
        echo "还没有安装socks5"
        exit 0
    fi
    count=`wc -l /etc/socks5/socks5_installd | awk '{print $1}'`
    echo "当前有 $count 个socks5配置"
    cat -n /etc/socks5/socks5_installd
    if [ $menu_num -eq 3 ];
    then
        read -p "请输入对应数字删除配置:" line
        uninstall_socks5
    fi
}

uninstall_socks5(){
    port=`sed -n ${line}p /etc/socks5/socks5_installd | awk '{print $3}' | cut -c 6-20`
    systemctl stop socks5_${port}
    systemctl disable socks5_${port}
    rm /etc/systemd/system/socks5_${port}.service
    rm /etc/socks5/config_${port}.json
    systemctl daemon-reload
    # rm socks5
    sed -i ${line}d /etc/socks5/socks5_installd
    echo "卸载$port完成"
}

uninstall_all_socks5(){
    read -p "清除所有socks5配置? (默认否) [Y/n] :" yn
    [ -z "${yn}" ] && yn="n"
    if [[ $yn == [Yy] ]]; then
        echo -e "清理中..."
        count=`wc -l /etc/socks5/socks5_installd | awk '{print $1}'`
        for line in `seq 1 $count`
        do
            port=`sed -n ${line}p /etc/socks5/socks5_installd | awk '{print $3}' | cut -c 6-20`
            systemctl stop socks5_${port}
            systemctl disable socks5_${port}
            rm /etc/systemd/system/socks5_${port}.service
            rm /etc/socks5/config_${port}.json
            systemctl daemon-reload
            # rm socks5
            # sed -i ${line}d socks5_installd
            echo "卸载$port完成"
        done 
        cat /dev/null > /etc/socks5/socks5_installd
    fi
    
}

menu(){
    echo -e " socks5安装管理脚本 ${Red}[${shell_version}]${Font}\n"
    echo -e "${Green}1.${Font}  新增一个socks5配置"
    echo -e "----------"
    echo -e "${Green}2.${Font}  列出所有socks5信息"
    echo -e "${Green}3.${Font}  删除socks5配置"
    echo -e "----------"
    echo -e "${Green}4.${Font}  卸载清除所有socks5配置"
    echo -e "${Green}5.${Font}  退出 \n"
    read -p "请输入数字：" menu_num
    case $menu_num in
        1)
          install_socks5
          ;;
        2)
          list_socks5
          ;;
        3)
          list_socks5
          ;;
        4)
          uninstall_all_socks5
          ;;
        5)
          exit 0
          ;;
        *)
          echo -e "${RedBG}请输入正确的数字${Font}"
          ;;
    esac
}

menu
