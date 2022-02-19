### 所有系统以CentOS7为准
CentOS Linux release 7.9.2009
Core: 3.10.0-1160
uname -m: x86_64

### 1. 安装工具包代码
* [安装工具包](./0xF0.ops.install.sh)
* [配置查看-硬件](./0xFF.usage.hardware.sh)
* [配置查看-系统](./0xFF.usage.os.sh)
* [系统调试-粗略工具](./0xF1.ops.general.sh)
* [系统调试-细力度工具](./0xF3.ops.overview.sh)
* [程序调试-单程序性能](./0xF2.ops.detail.sh)
* [工具-iproute](./0xE0.network.iproute.md)

### 工具版本
* 单机核心[默认不用装]
  * coreutils-8.22-24.el7.x86_64
* 单机细节[默认不用装]
  * binutils-2.27-44.el7.x86_64
  * glibc-2.17-317.el7.x86_64
    * 命令：ldconfig
  * glibc-common-2.17-317.el7.x86_64
    * 命令：ldd
  * which-2.20-7.el7.x86_64
    * 命令：which
* 单机细节2
  * time-1.7-45.el7.x86_64
    * 命令：time
  * strace-4.24-6.el7.x86_64
    * 命令：strace
  * perf-3.10.0-1160.6.1.el7.x86_64
    * 命令：perf
* 单机整体
  * procps-ng-3.3.10-28.el7.x86_64[默认不用装]
    * free/pgrep/pidof/pidwait/pkill/pmap
    * procps/ps/pwdx/skill/slabtop/snice
    * tload/top/uptime/w/watch
    * sysctl.conf
    * vmstat/sysctl
  * sysstat-10.1.5-19.el7.x86_64
    * mpstat/iostat/pidstat/nfsiostat/cifsiostat
    * sar/sa1/sa2/sadc/sadf

* 网络相关
  * tcpdump-4.9.2-4.el7_7.1.x86_64
    * tcpdump
  * netcat-1.218-2.el7.x86_64
    * nc
  * ifstat-1.1-34.el7.x86_64
    * ifstat
  * iproute-4.11.0-30.el7.x86_64
    * ip/ss
    * instat/nstat/rdma/routef/toutel/ctstat/rtstat/tc/genl
    * bridge/devlink/rtacct/rtmon/tipc/arpd
  * bind-utils-9.11.4-26.P2.el7.x86_64
    * dig/nslookup/host
  * bridge-utils-1.5-9.el7.x86_64
    * brctl
  * net-tools-2.0-0.24.20131004git.el7.x86_64[建议用iproute的包替换]
    * netstat/ifconfig/arp/rarp
    * route/hostname
    * ipmaddr/iptunnel/mii-tool/nameif