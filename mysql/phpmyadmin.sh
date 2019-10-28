#!/bin/sh
docker run --name myadmin -d --link local-mariadb:db  -p 8089:80 phpmyadmin/phpmyadmin
