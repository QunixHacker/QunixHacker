#! /usr/bin/env bash

# usage 1
nohup hive --hiveconf some_var1=1 --hiveconf some_var2=222 -f 0xF0.gist.hql 1>log.out 2>log.err &
tail -f log.out

# usage 2
hadoop fs -du -hadoop

