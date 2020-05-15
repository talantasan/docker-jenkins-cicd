#!/bin/bash

DB_NAME=$1
DB_HOSTNAME=$2
DB_PASS=$3

mysqldump $DB_NAME -h$DB_HOSTNAME  -uroot -p$DB_PASS > /tmp/talantsql-backup-$(date +%Y-%m-%d-%T).sql
aws s3 cp /tmp/talantsql-backup-*.sql s3://talant-sql-backup
rm -rf /tmp/talantsql-backup-*.sql