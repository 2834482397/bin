#!/usr/bin/env sh
#
# name     : adbshot.sh
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# license  : GPL
# created  : 2016 May 14
# modified : 2016 May 14
#

NAME="$1"

if [[ -z $NAME ]]; then
    echo "Usage: $0 <name>"
    exit 1
fi

adb shell screencap -p | sed 's/\r$//' > "${NAME}".png

exit 0
