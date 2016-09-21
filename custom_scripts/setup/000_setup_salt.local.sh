# Create salt.txt correctly.
if [ ! -f "$ROOT_DIR/secure/salt.txt" ]; then
  mkdir -p ~/secure/
  echo $( openssl rand -base64 16  ) > $ROOT_DIR/secure/salt.txt
fi