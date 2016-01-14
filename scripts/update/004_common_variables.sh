#!/bin/bash -x
# ------------------
# COMMON VARIABLES
# ------------------
#SYSTEM_SITE=./root/conf/drupal/config/active/system.site.yml
#SETTINGS_FILE=./sites/default/settings.php

cd $HTDOCS

# drush config-set system.site uuid 9bb9c183-394f-4a4b-ae00-cef13ee47694 --yes
# echo "uuid: 9bb9c183-394f-4a4b-ae00-cef13ee47694" > ./root/conf/drupal/config/staging/system.site.yml
# echo "langcode: en" >> ./root/conf/drupal/config/staging/system.site.yml
# echo "name: 'Cocomore AG: Drupal agency in Frankfurt am Main'" >> ./root/conf/drupal/config/staging/system.site.yml
# echo "page:" >> ./root/conf/drupal/config/staging/system.site.yml
# echo "  front: node" >> ./root/conf/drupal/config/staging/system.site.yml
# echo "  403: ''" >> ./root/conf/drupal/config/staging/system.site.yml
# echo "  404: ''" >> ./root/conf/drupal/config/staging/system.site.yml


# if [ -e sites/default/settings.php ]; then
#  drush $DRUSH_PARAMS config-import staging --yes
# else
#  echo "You should install the system for first time."
# fi
