cd $ROOT_DIR/tests
composer install

rm -rf $ROOT_DIR/tests/reports/*.xml
BEHAT=$ROOT_DIR/tests/vendor/behat/behat/bin/behat

if [ -f $BEHAT ];
then
  echo "Starting BEHAT tests..."
  $BEHAT --verbose
  $BEHAT --format junit --out reports
  echo "REPORTS REMOTE FOLDER"
  ls -lah reports
else
  echo "No behat file found in: $BEHAT."
fi
