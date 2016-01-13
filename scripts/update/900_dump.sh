if [ -f $ROOT_DIR/sql/dump-${ENV}.sql ]; then
  mv $ROOT_DIR/sql/dump-${ENV}.sql $ROOT_DIR/sql/dump-${ENV}.previous.sql
fi
$DRUSHBIN $DRUSH_PARAMS --yes sql-dump --result-file=$ROOT_DIR/sql/dump-${ENV}.sql
