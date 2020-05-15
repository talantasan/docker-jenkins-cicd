#!/bin/bash

mysqldump talantdb  -h db_host -u root -pmysql1234  > /tmp/talant-mysql-$(date +%m-%d-%y=%H-%M).sql


