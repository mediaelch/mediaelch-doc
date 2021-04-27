<div align="center">
	<img alt="MediaElch Logo" src="docs/source/images/MediaElch.png" />
</div>

# MediaElch Documentation

This repository contains the source files of the MediaElch documentation.
You can find the documentation here: https://mediaelch.github.io/mediaelch-doc/


## Build documentation

Download and install [Sphinx](http://www.sphinx-doc.org/en/master/) as well
as the "Read the Docs Sphinx Theme".

```sh
pip3 install --user sphinx sphinx-autobuild # Install Sphinx and a watch tool
pip3 install --user pydata_sphinx_theme # Install Theme
cd docs
./create_changelog.sh # Concerts the Markdown changelog to reStructuredText
make html
```


## Release documentation

If you are a maintainer of this repository, you can release a new version of this
documentation by using `./update_github_pages.sh`.

*Note*: You must not have any un-committed changes in your local repository!

You can use the Dockerfile provided to release the documentation. This can be
helpful if you're on macOS or Windows because the script `create_changelog.sh`
requires GNU `sed` and can't work with the outdated macOS version.

```sh
docker build --pull -t "mediaelch/mediaelch-ci-doc:latest" .
# We need volumes to the mediaelch-doc repository and to your ssh credentials
docker run -it --rm \
  --name mediaelch_doc_build \
  -v $(pwd):/opt/mediaelch-doc \
  -v ${HOME}/.ssh:/root/.ssh \
  mediaelch/mediaelch-ci-doc:latest \
  /opt/mediaelch-doc/update_github_pages.sh
```


### Troubleshooting

If you can't install the theme using `pip`, please refer to:
https://sphinx-rtd-theme.readthedocs.io/en/latest/installing.html#via-git-or-download


## Contributing

Fork this repo and create a pull request containing your changes.
Any help is welcome! :-)

If you add images (such as screenshots), minimize them using
[Trimage](https://trimage.org/).

Please also run `rstcheck`:
```sh
pip install --user rstcheck
find . -type f -name '*.rst' -exec rstcheck {} \+
```


## Scripts

The `scripts` directory contains some scripts that can be used
to prefer folder structures, etc. for screenshots.

Refer to each script's source for more details.
