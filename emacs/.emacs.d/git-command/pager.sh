#!/bin/sh
set -e

tmp=`mktemp ._git-command-with-git-pager-temporary.XXXXXX`
cat >"$tmp"
sh -s <<__EOF__
$GIT_EDITOR   --eval "(git-command--with-pager-display-contents \"$tmp\")"
__EOF__
rm -f "$tmp"
