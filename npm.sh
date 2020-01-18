#!/bin/bash
#判断项目中是否需要更换npm源拉取包
#删除项目中指定的源，使用私服拉取
[ -f "./yarn.lock" ] && rm -rf ./yarn.lock
#清除服务器缓存，如果私服中包有相同版本，清除本地缓存，从新拉取
yarn cache clean
#判断是否从私服拉取，如果有这个文件并且有内容，则从文件中定义的源拉取，如果没有文件或者没有内容则从私服拉取
if [ -f "./npmsource" -a -s "./npmsource" ]
then
#自定义源安装
	YarnUrl=$(cat ./npmsource |awk 'NR==1')
    npmFInstall
else
#正常安装
	npmInstall
fi