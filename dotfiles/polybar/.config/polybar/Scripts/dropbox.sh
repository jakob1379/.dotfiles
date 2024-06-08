#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

case "$1" in
    --toggle)
	if [ "$(pgrep dropbox)" ]; then
	    pkill -f dropbox
	else
	    dropbox &
	fi
	;;
    *)
	if [ "$(pgrep dropbox)" ]; then
	    echo ""
	else
	    echo ""
	fi
	;;
esac
