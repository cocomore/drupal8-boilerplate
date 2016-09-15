cd $HTDOCS
$DRUSHBIN $DRUSH_PARAMS --yes config-import sync
$DRUSHBIN $DRUSH_PARAMS --yes cache-rebuild
