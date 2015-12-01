# Analyze host and export global vars.
# target.sh should run before, so HOSTOS should be available.
if [[ "$HOSTOS" == "Darwin" ]]; then
    WWW_GROUP="_www"
    #WWW_GROUP="www-data"
elif [[ "$HOSTOS" == "Windows" ]]; then
    # @TODO: We need to try to obtain it without localization.
    WWW_GROUP="Administratoren"
else
    WWW_GROUP="www-data"
fi

export WWW_GROUP
