WORK_PATH='/usr/project/Cartoon'
NGINX_HTML='/usr/nginx/html'
cd $WORK_PATH
echo "先清除 Cartoon 老代码"
git reset --hard origin/master
git clean -f
echo "拉取 Cartoon 新代码"
git pull origin master
echo "下载第三方包"
yarn
echo "编译 build"
yarn build
echo "删除nginx静态资源"
cd $NGINX_HTML
rm -rf *
echo "移动打包后的静态资源"
cp -r /usr/project/font/dist/* ../html/