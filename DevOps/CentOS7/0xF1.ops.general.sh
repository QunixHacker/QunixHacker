#! /usr/bin/env bash

## 0. uptime
uptime

## 1. memory
free -h
dmesg -T
dmesg -T|grep OOM
top/htop

