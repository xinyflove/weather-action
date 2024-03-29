#!/bin/sh

# 以调试的方式执行shell ，只识别定义过的变量，同时脚本传回值非0 直接结束shell
set -eux

# 城市
CITY=Yantai
LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"
FORMAT=位置:%l+天气条件:%c+%C+温度:%t+湿度:%h+风速:%w+降水概率:%o

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  wttr.in/$CITY?format=$FORMAT