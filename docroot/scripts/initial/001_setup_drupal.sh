cd $ROOT_DIR/sites/default/
cp default.settings.php settings.php
cat $ROOT_DIR/../profiles/cocomore/setup.conf >> settings.php
cp default.services.yml services.yml
