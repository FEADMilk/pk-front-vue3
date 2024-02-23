#!/bin/sh

echo -e “\033[33m \[ deploy.sh => 准备打包，上传服务器... \] \033[0m”

# 构建
npm run build
echo -e “\033[33m \[ deploy.sh => 打包成功！ \] \033[0m”

# 上传部署 示例
rsync -avz --delete -e "ssh -p 22" ./dist/ root@123.249.17.22:/home/like/frontend/pk-front-vue3

echo -e “\033[33m \[ deploy.sh => 上传服务器成功！ \] \033[0m”

# rsync: 这是一个常用的文件同步工具，用于在本地和远程之间同步文件和目录。
# -avz: 这是rsync命令的选项，含义如下：
# -a: 表示以归档模式进行同步，包括文件属性、权限等。
# -v: 表示以详细模式进行同步，会显示更多的同步信息。
# -z: 表示在传输时进行压缩，可以加快传输速度。
# --delete: 表示在远程目标上删除那些本地源中已经不存在的文件。
# -e "ssh -p 22": 这是指定使用SSH协议进行连接，并且通过-p 22指定了SSH连接的端口号为22。
# ./dist/: 这是本地要同步的目录，./表示当前目录，dist/是要同步的目录名。
# root@192.168.31.77:/home/website/pk-front-vue3: 这是远程服务器的用户名和地址，以及要同步到的目标目录。具体解释如下：
# root: 远程服务器的用户名。
# 192.168.31.77: 远程服务器的IP地址。
# :/home/website/pk-front-vue3: 远程服务器上要同步到的目标目录。
# 因此，整个命令的作用是使用rsync命令将本地./dist/目录的内容通过SSH连接同步到远程服务器上的/home/website/pk-front-vue3目录中，同时保持文件属性、权限，并且在远程目标上删除本地源中已经不存在的文件。