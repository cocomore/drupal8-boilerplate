if [[ "$OSTYPE" == "darwin"*   ]]; then
    # We are on Mac OSX system.
    HOSTOS="Darwin"
elif [[ "$OSTYPE" == "msys"   ]]; then
    # We are probably on a MSYS shell on Windows.
    HOSTOS="Windows"
else
    # We considered that default is Linux because we are only supporting OS X and Linux.
    # If other system is supported we need to test for it.
    HOSTOS="Linux"
fi

if [ "$HOSTOS" == "Darwin" ]; then
    TARGET=`hostname -s`
elif [ "$HOSTOS" == "Windows" ]; then
    TARGET=`hostname`
else
    TARGET=`hostname --short`
fi

echo "Host is: $HOSTOS"
echo "Target is: $TARGET"

export HOSTOS
export TARGET
