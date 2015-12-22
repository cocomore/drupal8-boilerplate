#!/bin/bash
# ----------------------------------------------
# SETUP THE DEVELOPMENT ENVIRONMENT
# ----------------------------------------------
SETTINGS=$HTDOCS/sites/default/settings.php

cd $HTDOCS

# Drop and recreate initial database.
# `drush $DRUSH_PARAMS sql-connect` < ./root/sql/001_initial_dump.mysql

# Set the settings file is doesn't exists.
if [ ! -L "$SETTINGS" ]; then
  ln -s $HTDOCS/root/conf/drupal/settings/staging/settings.php $SETTINGS
fi
