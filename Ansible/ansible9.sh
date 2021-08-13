ansible list1 -m command -a'ls -l /etc'


# 配置其他用户
创建用户在家目录： useradd dai  => ls /home
指定密码： passwd dai => jsx#609!
设置允许sudo: visudo -> 设置wheel组，可以让组内用户执行所有命令
为新建用户添加wheel组：usermod -aG wheel dai,groups dai

# 如果不想要输入多次口令，可以直接visudo,设置wheel的NOPASSWD组，无需输入命令

ansible list1 -m command -a'ls -l /etc' -u dai -k -b -K[ wang用户使用root权限 ]