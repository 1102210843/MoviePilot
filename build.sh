#!/bin/bash

# 运行Python脚本并获取变量值
python_output=$(python version.py)

# 在Shell脚本中使用变量值
echo "构建版本为: $python_output"

docker build --platform linux/amd64 --no-cache --rm -t 192.168.1.201:5555/moviepilot:"$python_output" .

docker push 192.168.1.201:5555/moviepilot:"$python_output"

