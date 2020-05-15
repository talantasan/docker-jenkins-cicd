#!/bin/bash

MY_DATE=$(date +%Y-%m-%d)
BACKUP_FILE=mysql-backup-talant-$MY_DATE

DB_NAME=$1
DB_HOSTNAME=$2
DB_PASS=$3

AWS_ID=$4
AWS_SECRET=$5
BUCKET_NAME=$6


mysqldump $DB_NAME -h$DB_HOSTNAME  -uroot -p$DB_PASS > /tmp/$BACKUP_FILE.sql && \
export AWS_ACCESS_KEY_ID=$AWS_ID && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
aws s3 cp /tmp/$BACKUP_FILE s3://$BUCKET_NAME

