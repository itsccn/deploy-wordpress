﻿FROM mysql:8
LABEL maintainer=itsccn<chen.sun@itsccn.com>
ADD db.sql /docker-entrypoint-initdb.d
ADD config-file.cnf /etc/mysql/conf.d
