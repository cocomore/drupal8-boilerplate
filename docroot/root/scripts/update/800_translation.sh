# ----------------------------------------
# Update available contrib translations
# ----------------------------------------
for translation in `ls $ROOT_DIR/root/translations/*.de.po`; do
  $DRUSHBIN --include=$ROOT_DIR/modules/contrib/drush_language/ language-import de $translation --replace
  echo "Translation $translation imported."
done
