#!/usr/bin/env bash
################################################################################
# In som cases we want to have a local copy of the database and the staging environment.
# This is needed for have our local environment synchronized.
################################################################################

FTP_USER='user'
FTP_PASS='pass'

cd $ROOT_DIR
cd backups/

if [ $ENVIRONMENT = 'production' ]; then

  dbDump="$PROJECT_NAME-live.sql";
  fileBackup="$PROJECT_NAME-live-files.tar";
  path='incoming/live';
  from='LIVE'

else

  dbDump="$PROJECT_NAME-staging.sql";
  fileBackup="$PROJECT_NAME-staging-files.tar";
  path='incoming';
  from='STAGING'

fi

# Remove previous backups files.
if [ -f "$PROJECT_NAME.sql" ]; then
  rm "$PROJECT_NAME.sql"
fi
if [ -f "$PROJECT_NAME-files.tar" ]; then
  rm "$PROJECT_NAME-files.tar"
fi

echo "Fetching last data from $from environment"
lftp "sftp://$FTP_USER:$FTP_PASS@box.cocomore.com" -e "get $path/$dbDump -o $PROJECT_NAME.sql; get $path/$fileBackup -o $PROJECT_NAME-files.tar;bye;"