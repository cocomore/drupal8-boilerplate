################################################################################
# In cases we cannot use distinguished drushrc.php files we may want to provide
# default params to drush, by building a default string.
################################################################################

cd $HTDOCS

echo "Drush location: $(which $DRUSHBIN)"
echo "Drush version: $($DRUSHBIN --version)"

# Check if we have config files in cmi/sync folder.
config_exists=false
# Null option needs to be set here.
shopt -s nullglob
for z in $ROOT_DIR/cmi/sync/*.yml; do
  config_exists=true
  break
done

$DRUSHBIN sql-drop --yes --debug

if [ "$config_exists" = true ] ; then
  echo "Found configuration files in cmi/sync folder. Installation process will import them."
  $DRUSHBIN site-install cocomore_profile  --yes --site-name="$SITE_NAME" --config-dir=$ROOT_DIR/cmi/sync
else
  echo "No configuration files in cmi/sync folder were found. Instalation won't import anything."
  $DRUSHBIN site-install cocomore_profile  --yes --site-name="$SITE_NAME"
fi
