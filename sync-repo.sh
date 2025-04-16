#!/bin/bash

echo "开始同步远程仓库..."

# 获取远程最新代码
git fetch origin

# 合并远程master分支到本地
git merge origin/master

# 如果有冲突需要手动解决
if [ $? -ne 0 ]; then
  echo "存在冲突,请手动解决后重试"
  exit 1
fi

# 推送本地更改到远程
git push origin master

echo "同步完成!"
