# Recreate the files directory.
rm -rf $ROOT_DIR/sites/default/files && mkdir -p $ROOT_DIR/sites/default/files/translations
chmod 775 $ROOT_DIR/sites/default/files/translations && chmod 775 $ROOT_DIR/sites/default/files

# Recreate default for staging environment.
if [ -h $ROOT_DIR/sites/default/settings.php ]; then
  unlink $ROOT_DIR/sites/default/settings.php
fi
if [ -f $ROOT_DIR/sites/default/settings.php ]; then
  rm -f $ROOT_DIR/sites/default/settings.php
fi
cp $ROOT_DIR/root/conf/drupal/staging/default.settings.php $ROOT_DIR/sites/default/settings.php
chmod 664 $ROOT_DIR/sites/default/settings.php

# Symlink settings.php
#ln -s $ROOT_DIR/root/conf/drupal/staging/settings.php $ROOT_DIR/sites/default/settings.php
#chmod g+w $ROOT_DIR/sites/default/settings.php

#if [ ! -d "$ROOT_DIR/sites/default/files" ]; then
#  mkdir $ROOT_DIR/sites/default/files
#  chgrp $WWW_GROUP $ROOT_DIR/sites/default/files -R
#  chmod g+w $ROOT_DIR/sites/default/files/ -R
#fi
