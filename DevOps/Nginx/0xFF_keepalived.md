
## QA

#### 1.IPVS: Can't initialize ipvs: Protocol not available。
```sh
# 1. 检查内核是否加载ip_vs 模块
lsmod|grep ip_vs
lsmod|grep ip_vs_wrr
# 2. 加载
modprobe ip_vs
modprobe ip_vs_wrr
# 3. 如果是容器内，需要在容器宿主执行上述命令。（容器使用宿主的内核。）
```

## links

1. https://kefeng.wang/2018/05/18/keepalived/
2. https://www.cnblogs.com/muhy/p/10521896.html
3. https://blog.csdn.net/Jason160918/article/details/100101791