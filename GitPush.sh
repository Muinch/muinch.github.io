#!/bin/bash
# 清理终端上的内容
clear
# 打印作者详细信息
echo "@author 懒虫"
# on start
echo "***脚本开始执行***"

# ------------------ 脚本常量配置 ------------------
# 项目目录
targetPath=$(cd "$(dirname "$0")"; pwd)
echo "项目目录："$targetPath
# 当前时间
curTime=`date '+%Y-%m-%d_%H:%M:%S'`
# 提交描述
brief="提交时间":$curTime
# ------------------ 更新提交远程仓库代码 ------------------

# 切换到目标目录
cd $targetPath

# 强制更新pull
git fetch --all
git reset --hard origin master
git pull
# 提交本地push
git add .
git commit -m $brief
git push origin master
