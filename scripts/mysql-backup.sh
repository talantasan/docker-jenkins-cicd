#!/bin/bash
DATE=$(date +'%d-%h-%y')
DB_NAME=$1
DB_HOST=$2
DB_PASSWD=$3

mysqldump $DB_NAME -h$DB_HOST -uroot -p$DB_PASSWD  > tmp/talantdb-backup-$DATE.sql