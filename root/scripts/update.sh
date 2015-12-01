#!/bin/bash
cd "$(dirname ${0})"

# Define ROOT_PATH global var.
ROOT_PATH=$(pwd)
export ROOT_PATH

# Including host and target detection lib.
. lib/target.sh

# Including environment detection lib.
. lib/environment.sh ${1}

# Call main script using shellwrapper.sh.
# We automatically infer the folder name based on the main script name.
SCRIPT_FILENAME=${0##*/}
SCRIPT_NAME="${SCRIPT_FILENAME%.*}"

bash shellwrapper.sh ./${SCRIPT_NAME} ${ARGS}
