PARAM=$1

case "$PARAM" in

  # Staging environment.
  staging)
    ENV="staging"
  ;;

  # Testing environment.
  testing)
    ENV="testing"
  ;;

  # Development environment.
  *)
    ENV="local"
  ;;

esac

export ENV

if [ -n "$PARAM" ]; then
  ARGS="$ENV,$PARAM"
else
  ARGS="$ENV"
fi

export ARGS
