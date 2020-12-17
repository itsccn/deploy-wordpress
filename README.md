# deploy-wordpress
# 使用方法

1. fork 这个仓库
2. 执行 `download-wordpress.sh` 脚本下载最新版本的wordpress
3. 修改 nginx/nginx.conf server_name 改为自己的ip或者域名 （如果需要https 放开443端口 在cert文件夹放入自己的证书）
4. 修改 `docker-compose.yml` 文件 定义数据库相关信息
5. 执行 docker-compose up -d
