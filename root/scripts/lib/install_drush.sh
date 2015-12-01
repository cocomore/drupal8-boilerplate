# Install drush.
# If provided with revision flag we will download and install specified
# version.

usage() { echo "Usage: $0 -r <revision>" 1>&2; exit 1; }

while getopts ":r:" o; do
    case "${o}" in
        r)
            REVISION=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${REVISION}" ]; then
    usage
fi

# Download and install composer.
# TODO: Check composer existence.
mkdir -p $HOME/.composer/composer; curl -sS https://getcomposer.org/installer | php -- --install-dir=$HOME/.composer/composer
export COMPOSERPHAR=$HOME/.composer/composer/composer.phar

echo $COMPOSERPHAR

# Download latest drush.
if [ -n "$REVISION" ]; then
    echo "Intalling drush rev: $REVISION."
    php $COMPOSERPHAR global require drush/drush:dev-master#${REVISION}
else
    echo "Intalling drush HEAD."
    php $COMPOSERPHAR global require drush/drush:dev-master
fi

export DRUSHBIN=$HOME/.composer/vendor/drush/drush/drush

cd $ROOT_DIR
