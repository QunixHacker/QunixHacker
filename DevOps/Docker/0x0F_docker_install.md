## 卸载旧版本
```sh
sudo yum remove docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-engine

sudo rm /var/lib/docker/ -rf

```

## 1. 设置yum 仓库
```sh
sudo yum install -y yum-utils \
    device-mapper-persistent-data \
    lvm2

sudo yum-config-manager \
    --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

sudo yum makecache fast

#如果失败 删除异常源
sudo rm -f /etc/yum.repos.d/docker-ce.repo
#使用官方源
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```

## 2. 安装最新版或指定版本
```sh
sudo yum install -y docker-ce docker-ce-cli containerd.io

$ yum list docker-ce --showduplicates | sort -r
# <VERSION_STRING>需要替换为第二列的版本号，如：18.06.0.ce-3.el7
$ sudo yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io
sudo systemctl start docker

```

## 3. docker-compose
```sh
# 1. install
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# 2. chmod
chmod +x /usr/local/bin/docker-compose
```






## 4. links
1. https://www.cnblogs.com/hellxz/p/11044012.html
2. https://docs.docker.com/compose/install/
