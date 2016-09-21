#!/usr/bin/env bash

# Remove all contrib and patched modules:
rm -rf $HTDOCS/modules/contrib/*
rm -rf $HTDOCS/modules/patched/*

# If it's present the make file run drush make.
if [ -f "$HTDOCS/profiles/cocomore/cocomore.make.yml" ]; then
  # No drupal installed dowload it and place it in the correct directory.
  $DRUSHBIN make $HTDOCS/profiles/cocomore/cocomore.make.yml $HTDOCS $DRUSHMAKE_PARAMS
  # Clear the cache for rebuild the module paths in case some module was moved to another folder, for example from
  # Contrib to patched.
  $DRUSHBIN $DRUSH_PARAMS cache-rebuild --yes
else
  echo "No make file found."
fi
