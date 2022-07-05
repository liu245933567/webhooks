#!/bin/bash 
WORK_PATH='/root/my-product/blog'
DIST_PATH='/root/my-product/blog/dist'
NGINX_HTML='/www/server/nginx/html'

cd $WORK_PATH
echo "先清除老代码"
git reset --hard origin/master
git clean -f
echo "拉取新代码"
git pull origin master
echo "下载第三方包"
pnpm install
echo "编译build"
pnpm build
echo "删除nginx静态资源"
cd $NGINX_HTML
rm -rf *
echo "移动打包后的静态资源"
cp -r $DIST_PATH/* ../html/