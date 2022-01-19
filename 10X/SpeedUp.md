## 各种源加速

### 一、Mac/Homebrew

``` console
# 1. 替换brew.git
cd $(brew --repo)
git remote set-url origin git://mirrors.ustc.edu.cn/brew.git

# 2. 替换homebrew-core 源
cd $(brew --repo)/Library/Taps/homebrew/homebrew-core
git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-core.git

# 3. brew 更新
brew update

# 4. 设置binary镜像
# 4.1 Bash
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
source ~/.bash_profile
# 4.2 如果是Zsh
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc
```
官方origin
* https://github.com/Homebrew/brew.git
* core: origin https://github.com/Homebrew/homebrew-core.git
* 问题定位：https://www.raydbg.com/2019/Homebrew-Update-Slow/


### 二、Centos7 /Yum
配置163 源

``` console
# 1. 备份镜像文件,没有就不用备份
mv /etc/yum.repos.d/CentOS-Base.repo/etc/yum.repos.d/CentOS-Base.repo.backup
# 2. 下载新的CentOS-Base.repo 到/etc/yum.repos.d/
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo

# 3. 替换地址
vi CentOS-Base.repo
# 修改文件中的baseurl地址,把每个baseurl后边的$releasever替换成7，把$basearch替换成x86_64
# 4. 清缓存 
yum clean all
# 5. 缓存 
yum makecache
```
mirrors repo
* http://mirrors.163.com/.help/CentOS7-Base-163.repo
* http://mirrors.aliyun.com/repo/Centos-7.repo


### 三、Python/Pypi

``` console
# 临时使用
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple some-package

# 设为默认
pip install pip -U
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```

mirrors
* 中国科学技术大学：https://pypi.mirrors.ustc.edu.cn/simple
* 阿里云：https://mirrors.aliyun.com/pypi/simple/
* 清华：https://pypi.tuna.tsinghua.edu.cn/simple
* 豆瓣：http://pypi.douban.com/simple/

### 四、Node/npm

``` console
# 1. 临时使用
npm install [package] --registry=https://registry.npm.taobao.org/
# 2. 长期使用
npm set registry https://registry.npm.taobao.org/
```

### 五、Docker Registry

1. 编辑文件
``` console
vim /etc/docker/daemon.json
```
2. json content 
``` json
{
  "registry-mirrors": ["加速地址"]
}
```
3. 使生效
``` console
systemctl daemon-reload
systemctl restart docker
```
