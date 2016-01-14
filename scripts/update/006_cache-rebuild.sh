################################################################################
# Rebuild the cache.
################################################################################

cd $HTDOCS

if [ -e sites/default/settings.php ]; then
  $DRUSHBIN $DRUSH_PARAMS cache-rebuild --yes
fi
