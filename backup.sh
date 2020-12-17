#!/bin/bash
nowDate=$(date "+%Y-%m-%d %H:%M:%S")
dir=$PWD
docker exec db  sh -c 'exec mysqldump   -uroot -p"$MYSQL_ROOT_PASSWORD" wordpress' > $dir/mysql/db.sql

cd $dir && git -c core.quotepath=false -c log.showSignature=false fetch origin --recurse-submodules=no --progress --prune  && git add -A  && git commit -m "auto backup $nowDate" && git -c core.quotepath=false -c log.showSignature=false push --progress --porcelain origin main

