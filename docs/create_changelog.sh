#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

NOTES=$DIR/source/release-notes.rst

rm -f $NOTES
cat $DIR/release-notes-header.rst > $NOTES

curl https://raw.githubusercontent.com/Komet/MediaElch/master/CHANGELOG.md >> $NOTES

echo "Markdown --> reStructuredText"

sed -i.bak '/###/ a ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^' $NOTES
sed -i.bak 's/### //' $NOTES

sed -i.bak '/##/ a ************************************' $NOTES
sed -i.bak 's/## //' $NOTES

# shellcheck disable=SC2016
sed -i.bak 's/`/``/g' $NOTES
sed -i.bak '/# Changelog/d' $NOTES

# Create issue/pr links
# shellcheck disable=SC2016
sed -i.bak -r 's/#([0-9]+)/`#\1 <https:\/\/github.com\/Komet\/MediaElch\/issues\/\1>`_/g' $NOTES

rm -f $NOTES.bak

echo "Done"
