#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"

###############################################################################
# Create a workspace which is essentially just our gh-pages branch.
#
# For git workspace, see:
# https://gist.github.com/cobyism/4730490?permalink_comment_id=2375522#gistcomment-2375522
###############################################################################

if [[ ! -d dist ]]; then
  git worktree add --quiet dist gh-pages
else
  cd dist
  git reset --hard HEAD
  # Assure we pull the current branch from origin
  git pull origin "$(git rev-parse --abbrev-ref HEAD)"
  cd "${SCRIPT_DIR}"
fi

# Ensure that the worktree is relative.  This is important
# to have it work in Docker containers as well.
if grep 'gitdir: /' dist/.git; then
	sed -i.bak 's$/.*/.git$../.git$' ./dist/.git
	rm ./dist/.git.bak
fi

###############################################################################
# Build HTML Docs from Sphinx Files
###############################################################################

./docs/create_changelog.sh
sphinx-build --color -b html docs/source "./dist"
rm -rf ./dist/.doctrees ./dist/.buildinfo

cd ./dist
git add .
if ! git diff --cached --quiet; then
	git commit -m "New pages version $(date)"
	git push origin gh-pages
	# github.com recognizes gh-pages branch and create pages
	# url scheme https//:[github-handle].github.io/[repository]
else
	echo "Nothing to commit!"
fi

cd ..
