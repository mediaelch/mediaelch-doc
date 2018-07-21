<div align="center">
	<img alt="MediaElch Logo" src="docs/source/images/MediaElch.png" />
</div>

## MediaElch Documentation

This repository contains the source files of the MediaElch documentation.

### Build documentation

Download and install [Sphinx](http://www.sphinx-doc.org/en/master/) as well
as the "Read the Docs Sphinx Theme" (`pip install sphinx_rtd_theme`).

```sh
cd docs
./create_changelog.sh # Concerts the Markdown changelog to reStructuredText
make dirhtml
```

#### Troubleshooting
If you can't install the theme using `pip`, please refer to:
https://sphinx-rtd-theme.readthedocs.io/en/latest/installing.html#via-git-or-download

### Contributing
Fork this repo and create a pull request containing your changes.
Any help is welcome! :-)

If you add images (such as screenshots), minimize them using
[Trimage]](https://trimage.org/).
