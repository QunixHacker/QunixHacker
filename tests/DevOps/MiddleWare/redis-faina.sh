#! /usr/bin/env bash

$(which python2) --version
cat ./log.txt | $(which python2) ./redis-faina.py