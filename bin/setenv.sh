#/bin/bash

# Synopsis:
# setenv.sh <gce>.cfg>

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ENV_VARS=`awk -f $DIR/setenv.awk "$@"`

echo $ENV_VARS
