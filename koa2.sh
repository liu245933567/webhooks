WORK_PATH='/usr/projects/koa2'
cd $WORK_PATH
echo "先清除 koa2 老代码"
git reset --hard origin/master
git clean -f
echo "拉取 koa2 master 新代码"
git pull origin master
echo "开始更新依赖"
yarn
echo "运行 koa2 项目"
yarn start:prod