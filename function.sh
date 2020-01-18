#!/bin/bash
#npm操作
function npmInstall(){
	#安装npm包
	yarn install --verbose
}
function npmFInstall(){
	#安装npm包
	yarn install --registry=$YarnUrl --verbose
}

#mvn操作
function mvnInstall(){
	
}