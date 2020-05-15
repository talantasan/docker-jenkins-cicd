#!/bin/bash
DATE=$(date +'%T+%m+%Y')
DB_NAME=$1
DB_HOST=$2
DB_PASSWD=$3

mysqldump $DB_NAME -h$DB_HOST -uroot -p$DB_PASSWD  > /tmp/talant-script-bucket-$DATE.sql