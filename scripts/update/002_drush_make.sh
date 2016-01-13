# If it's present the make file run drush make.
if [ -f "$HTDOCS/profiles/cocomore/cocomore.make.yml" ]; then
  # No drupal installed dowload it and place it in the correct directory.
  $DRUSHBIN --verbose --debug make $HTDOCS/profiles/cocomore/cocomore.make.yml $HTDOCS $DRUSHMAKE_PARAMS
else
  echo "No make file found."
fi