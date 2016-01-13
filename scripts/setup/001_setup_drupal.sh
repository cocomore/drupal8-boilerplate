#!/usr/bin/env bash

if [ ! -f "$HTDOCS/core/CHANGELOG.txt" ]; then
  # No drupal installed dowload it and place it in the correct directory.
  $DRUSHBIN dl --destination=$ROOT_DIR drupal-8 --drupal-project-rename=htdocs
fi

cd $HTDOCS/sites/default/

# Update the settings.php file if we added something new.
cp default.settings.php settings.php
cat $ROOT_DIR/conf/drupal/$ENVIRONMENT/setup.conf >> settings.php

if [ ! -f "services.yml" ]; then
  cp default.services.yml services.yml
fi

# Link the profile folder with the drupal profile one.
if [ -h "$HTDOCS/profiles/cocomore" ]; then
  # Link the profiles directory with our cocomore profile.
  unlink "$HTDOCS/profiles/cocomore"
fi

ln -s $HTDOCS/../profiles/cocomore $HTDOCS/profiles/cocomore