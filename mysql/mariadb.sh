#!/bin/sh
docker run --name local-mariadb -e MYSQL_ROOT_PASSWORD=admin1234 -d -p 3306:3306 mariadb
