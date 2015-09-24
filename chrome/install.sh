#!/bin/sh
# Fix chrome web inspector fonts to be readable.
# http://blog.dotsmart.net/2011/09/30/change-font-size-in-chrome-devtools/

local chrome_dir="$HOME/Library/Application Support/Google/Chrome"

# Only install on osx and if chrome seems to be installed
( test "$(uname)" != "Darwin" || ! test -e "${chrome_css_dir}" ) && return;

# Use:
DIR="$( cd "$( dirname "$0" )" && pwd )"
ln -s -f "${DIR}/Custom.css" "${chrome_dir}/Default/User\ StyleSheets/Custom.css"

