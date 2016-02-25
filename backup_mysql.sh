#!/bin/bash

BACKUP_PATH="/home/ubuntu/mysql_BKUP/"
# S3_PATH="s3://your-s3-bucket/"
FILE_NAME="mysql_dump_`date +%Y%m%d_%R`.sql.gz"

# AWS_CONFIG_FILE="/home/user/.aws/config"

cd $BACKUP_PATH
mysqldump -u nani -p0855 nani_db | gzip > $FILE_NAME

find $BACKUP_PATH -type f -name "mysql_dump_*.sql.gz"  -mmin +9 -daystart | xargs rm -rf

# aws s3 sync $BACKUP_PATH $S3_PATH  --delete
