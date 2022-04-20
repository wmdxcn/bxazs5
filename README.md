# AZS5

由于无法确定AZ绑定ip数量 设定固定5ip/10ip执行shell

基于centos7.X系统

自动公网绑定内网ip地址

自定义端口账号及密码

默认所有公网ip自动分流

<h2>5ip执行</h2>
wget -q -N --no-check-certificate https://raw.githubusercontent.com/wmdxcn/bxazs5/main/5.sh && bash 5.sh

<h2>10ip执行</h2>
wget -q -N --no-check-certificate https://raw.githubusercontent.com/wmdxcn/bxazs5/main/10.sh && bash 10.sh

<h2>其他命令</h2>

启动 /etc/init.d/sockd start

停止 /etc/init.d/sockd stop

重启 /etc/init.d/sockd restart

重载 /etc/init.d/sockd reload

状态 /etc/init.d/sockd state

添加用户 /etc/init.d/sockd adduser $USERNAME $PASSWORD

删除用户 /etc/init.d/sockd deluser $USERNAME

<h2>卸载</h2>

bash install.sh --uninstall
