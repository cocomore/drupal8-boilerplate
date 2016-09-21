################################################################################
# In cases we cannot use distinguished drushrc.php files we may want to provide
# default params to drush, by building a default string.
################################################################################
cd $HTDOCS

dbDump="$PROJECT_NAME.sql";
fileBackup="$PROJECT_NAME-files.tar";

echo "Importing the backup database and files....."

if [ -f $ROOT_DIR/backups/$dbDump ]; then
    $DRUSHBIN sql-drop -y
    $DRUSHBIN sql-cli < $ROOT_DIR/backups/$dbDump
    echo "$dbDump imported."
else
    echo "[ERROR] Can't found file $ROOT_DIR/backups/$dbDump"
    exit 1
fi

if [ -f $ROOT_DIR/backups/$fileBackup ]; then
    tar -xvf $ROOT_DIR/backups/$fileBackup --no-same-owner -C $HTDOCS
    echo "Imported the files $fileBackup"
else
    echo "[ERROR] Can't found file $ROOT_DIR/backups/$fileBackup"
    exit 1
fi
