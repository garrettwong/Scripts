#!/bin/sh

TERM_TO_FIND="FOUND"
TERM_TO_REPLACE_WITH="REPLACED"

find * -type f -exec sed -i -e "s/$TERM_TO_FIND/$TERM_TO_REPLACE_WITH/g" {} \;