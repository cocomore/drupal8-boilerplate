################################################################################
# Import the custom configuration for the environment.
################################################################################

#Import the configuration
cd $HTDOCS
$DRUSHBIN $DRUSH_PARAMS --yes config-import sync
$DRUSHBIN $DRUSH_PARAMS --yes cache-rebuild

# TODO: Config per environment will be added drush support, no partial for now.
#$DRUSHBIN $DRUSH_PARAMS config-import --yes $ENVIRONMENT --partial