#!/bin/bash
# --------------------------------------------------
# Create crontab and set it for the current user
# --------------------------------------------------

#if [ $ENVIRONMENT != 'local' ]; then
#  DRUSH_PATH=`which drush`
#
#  sed -e "s#DRUSH_REPLACE#$DRUSH_PATH $DRUSH_PARAMS#g" $ROOT_DIR/crontab.template > $ROOT_DIR/crontab.tmp
#  sed -e "s#HTDOCS_REPLACE#$HTDOCS#g" $ROOT_DIR/crontab.tmp > $ROOT_DIR/crontab
#
#  crontab $ROOT_DIR/crontab
#  rm $ROOT_DIR/crontab.tmp $ROOT_DIR/crontab
#fi