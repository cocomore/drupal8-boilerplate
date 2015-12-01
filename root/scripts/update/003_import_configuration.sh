# Run hook_update_N() if any. And run schema updates also.
$DRUSHBIN $DRUSH_PARAMS updb --yes --entity-updates

#Import the configuration
$DRUSHBIN $DRUSH_PARAMS config-import --yes --partial main
