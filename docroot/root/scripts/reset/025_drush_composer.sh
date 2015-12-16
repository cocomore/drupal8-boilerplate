################################################################################
# In cases we cannot use distinguished drushrc.php files we may want to provide
# default params to drush, by building a default string.
################################################################################

cd $HTDOCS

mkdir $HTDOCS/sites/default/files/composer
chgrp $WWW_GROUP $HTDOCS/sites/default/files/composer
chmod g+w $HTDOCS/sites/default/files/composer


$DRUSHBIN pm-enable composer_manager --yes

cd $HTDOCS/modules/contrib/geocoder
$DRUSHBIN composer-manager update --yes
