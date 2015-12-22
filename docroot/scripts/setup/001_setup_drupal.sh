#!/usr/bin/env bash

if [ ! -f "$HTDOCS/core/CHANGELOG.txt" ]; then
  # No drupal installed dowload it and place it in the correct directory.
  $DRUSHBIN dl --destination=$ROOT_DIR drupal-8 --drupal-project-rename=htdocs
fi

cd $HTDOCS/sites/default/

if [ ! -f "settings.php" ]; then
  # No drupal installed dowload it and place it in the correct directory.
  cp default.settings.php settings.php
  cat $ROOT_DIR/conf/drupal/$ENVIRONMENT/setup.conf >> settings.php
fi

if [ ! -f "services.yml" ]; then
  cp default.services.yml services.yml
fi

if [ ! -h "$HTDOCS/profiles/cocomore" ]; then
  # Link the profiles directory with our cocomore profile.
  ln -s $HTDOCS/../profiles/cocomore $HTDOCS/profiles/cocomore
fi