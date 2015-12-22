################################################################################
# In cases we cannot use distinguished drushrc.php files we may want to provide
# default params to drush, by building a default string.
################################################################################

cd $HTDOCS

echo "Drush location: $(which $DRUSHBIN)"
echo "Drush version: $($DRUSHBIN --version)"

$DRUSHBIN sql-drop --yes --debug
$DRUSHBIN site-install wirimkiez_profile --locale=de --yes --site-name="Wir im Kiez"
