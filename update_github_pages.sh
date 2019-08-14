#!/bin/bash
set -e
set -u
set -o pipefail
IFS=$'\n\t'

# get a clean master branch assuming
git checkout master
git pull origin master
git clean -df
git checkout -- .
git fetch --all

# build html docs from sphinx files
pushd docs
./create_changelog.sh
pushd source
sphinx-build -b html . "../../_build"
popd
popd

# create or use orphaned gh-pages branch
branch_name=gh-pages
if [ "$(git branch --list "$branch_name")" ]
then
	git stash
	git checkout $branch_name
	git pull origin $branch_name
	git checkout stash -- . 2> /dev/null || echo "Nothing on stash stack" # force git stash to overwrite added files
else
	git checkout --orphan "$branch_name"
fi

if [ -d "_build" ]
then
	(ls | grep -v "_build" | xargs rm -r) || echo "Nothing to clean"
	mv _build/* . && rm -rf "_build"
	git add .
	git commit -m "new pages version $(date)"
	git push origin gh-pages
	# github.com recognizes gh-pages branch and create pages
	# url scheme https//:[github-handle].github.io/[repository]
else
	echo "directory _build does not exists"
fi

git checkout master
