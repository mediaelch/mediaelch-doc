#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"

NOTES="${SCRIPT_DIR}/source/release-notes.rst"

cp "${SCRIPT_DIR}/release-notes-header.rst" "${NOTES}"

echo "Downloading latest Changelog"

curl --silent https://raw.githubusercontent.com/Komet/MediaElch/master/CHANGELOG.md >> "${NOTES}"

echo "Changelog: Markdown --> reStructuredText"

sed -i.bak '/####/ a -------------------------------------' "${NOTES}"
sed -i.bak 's/#### //' "${NOTES}"

sed -i.bak '/###/ a ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^' "${NOTES}"
sed -i.bak 's/### //' "${NOTES}"

sed -i.bak '/##/ a ************************************' "${NOTES}"
sed -i.bak 's/## //' "${NOTES}"

# shellcheck disable=SC2016
sed -i.bak 's/`/``/g' "${NOTES}"
sed -i.bak '/# Changelog/d' "${NOTES}"

# Create issue/pr links
# shellcheck disable=SC2016
sed -i.bak -r 's/#([0-9]+)/`#\1 <https:\/\/github.com\/Komet\/MediaElch\/issues\/\1>`_/g' "${NOTES}"

# Create line breaks Markdown Style
sed -i.bak -r 's/  $/ |br|/g' "${NOTES}"

# Keyboard shortcuts
# shellcheck disable=SC2016
sed -i.bak 's/<kbd>/:kbd:`/g' "${NOTES}"
# shellcheck disable=SC2016
sed -i.bak 's$</kbd>$`$g' "${NOTES}"

rm -f "${NOTES}".bak

echo "Created Changelog"
