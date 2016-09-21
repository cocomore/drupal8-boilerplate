#!/usr/bin/env bash

cd $HTDOCS/sites/default/

# Reset the settings.php file.
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