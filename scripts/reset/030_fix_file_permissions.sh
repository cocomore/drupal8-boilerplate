# Avoid returning an error, we want the script to continue in any case.
chgrp $WWW_GROUP -Rf $HTDOCS/sites/default/files/ || true
chmod a+w -Rf $HTDOCS/sites/default/files/ || true
chown www-data:www-data $HTDOCS/sites/default/settings.php || true
