#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
gitbook build

# 进入生成的文件夹
cd ./_book

# 把生成的内容发布到github gh-pages
git init
git add -A
git commit -m 'deploy'


# 发布到git@github.com:hmtongji/chrome-plugin.git master:gh-pages
git push -f https://github.com/hmtongji/chrome-plugin.git master:gh-pages