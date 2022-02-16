### 1. 启动单机实例
```
docker run -
```
### 2. 启动监控并重定向日志
```bash
docker exec redis_cache1_1 /bin/bash
# pwd in docker --> /usr/local/bin
redis-cli -p 6379 monitor 1>log.txt 2>&1
```
### 3. 写脚本模拟客户端读写行为
```bash
./tests/DevOps/MiddleWare/test_0x80_redis_hotkey.py
```
### 4. 复制日志到主机
```
# docker 容器复制到宿主
docker cp redis_cache1_1:/usr/local/bin/log.txt ~/logs/log.txt
# 宿主复制到本机
scp root@192.168.0.100:/root/logs/log.txt .
```
### 5. 调用分析脚本找下
1. https://github.com/facebookarchive/redis-faina
```bash
./tests/DevOps/MiddleWare/
sh redis-faina.sh
```
