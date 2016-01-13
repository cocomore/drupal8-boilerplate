#!/bin/bash
usage() { echo "Usage: $0 -m <message>" 1>&2; exit 1; }

while getopts ":m:" o; do
    case "${o}" in
        m)
            m=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${m}" ]; then
    usage
fi

# Target should be included (. $SCRIPT_DIR/target.sh) for HOSTOS.
if [[ "$HOSTOS" == "Darwin" ]]; then
    say ${m} || echo ${m}
elif [[ "$HOSTOS" == "Windows" ]]; then
    echo ${m}
else
    spd-say "${m}" || echo "${m}"
fi
