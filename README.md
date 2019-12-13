<div align="center">
	<img alt="MediaElch Logo" src="docs/source/images/MediaElch.png" />
</div>

## MediaElch Documentation

This repository contains the source files of the MediaElch documentation.
You can find the documentation here: https://mediaelch.github.io/mediaelch-doc/

### Build documentation

Download and install [Sphinx](http://www.sphinx-doc.org/en/master/) as well
as the "Read the Docs Sphinx Theme".

```sh
pip3 install --user sphinx sphinx-autobuild # Install Sphinx and a watch tool
pip install --user sphinx_rtd_theme # Install Theme
cd docs
./create_changelog.sh # Concerts the Markdown changelog to reStructuredText
make html
```

### Release documentation

If you are a maintainer of this repository, you can release a new version of this
documentation by using `./update_github_pages.sh`.

*Note*: You must not have any un-committed changes in your local repository!

#### Troubleshooting
If you can't install the theme using `pip`, please refer to:
https://sphinx-rtd-theme.readthedocs.io/en/latest/installing.html#via-git-or-download

### Contributing
Fork this repo and create a pull request containing your changes.
Any help is welcome! :-)

If you add images (such as screenshots), minimize them using
[Trimage](https://trimage.org/).
