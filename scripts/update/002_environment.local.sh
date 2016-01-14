#!/bin/bash
# ----------------------------------------------
# SETUP THE DEVELOPMENT ENVIRONMENT
# ----------------------------------------------

cd $HTDOCS

# Drop and recreate initial database.
# `drush $DRUSH_PARAMS sql-connect` < ./root/sql/001_initial_dump.mysql
