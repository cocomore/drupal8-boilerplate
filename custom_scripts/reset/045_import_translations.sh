# ----------------------------------------------
# Import and update the available translations.
# ----------------------------------------------
cd $HTDOCS
for translation in `ls $ROOT_DIR/translations/*.po`
do
  $DRUSHBIN --include=$HTDOCS/modules/contrib/drush_language/ language-import de $translation
  echo "Translation $translation imported."
done
