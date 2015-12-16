# Create salt.txt correctly.
if [ ! -f "~/secure/salt.txt" ]; then
  mkdir -p ~/secure/
  echo $( openssl rand -base64 8  ) > ~/secure/salt.txt
fi
