if [ -f ~/wik-${ENV}.sql ]; then
  mv ~/wik-${ENV}.sql ~/wik-${ENV}.previous.sql
fi
$DRUSHBIN $DRUSH_PARAMS --yes sql-dump --result-file=~/wik-${ENV}.sql
