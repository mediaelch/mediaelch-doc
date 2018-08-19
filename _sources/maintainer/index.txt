==========
Maintainer
==========

.. warning::

   Work in progress

This page and its children are used by MediaElch's maintainers and contain information
on how to release a new version, where to publish them, etc.

**If you are an enduser of MediaElch then skip this part.**


Release a new version
=====================

Follow these steps when releasing a new version. Start from a fresh git repository:

``git clone https://github.com/Komet/MediaElch.git``

Bump MediaElch Version
**********************

Change the version in following files:

 1. ``Version.h``
 2. ``MediaElch.plist``
 3. ``obs/MediaElch.spec``
 4. ``obs/README.md``

Update Changelogs
*****************

 1. main changelog (``changelog.md``)
 2. debian changelog (use ``dch --newversion "${ME_VERSION}-1" --distribution vivid``)
 3. obs changelog (``obs/MediaElch.changes``)

Update Git
**********

 1. Commit your changes (MediaElch version and changelogs).
 2. Add a version tag and push your changes
  - ``git tag -a v1.0 -m "MediaElch Version 1.0"``
  - ``git push origin master``
  - ``git push --tags``

Package MediaElch for distributions
***********************************

Windows
-------

macOS
-----

Debian
------

Releases for Debian and Ubuntu are distributed using Launchpad_.

openSUSE
--------

Releases for openSUSE are distributed using the `open build service`_.


Publish Release Notes in Forums
*******************************

A new release should be announced in some forum posts:

 - [English] https://forum.kodi.tv/showthread.php?tid=136333
 - [German] https://www.kodinerds.net/index.php/Thread/14560-MediaElch-MediaManager-for-Mac-Linux-Win/?pageNo=34


Update External Documentation
*****************************

There are several external forum posts and other documentation pages that may
need to be updated. Look at following pages and update them if neccessary:

 - [English] This documentation: https://github.com/mediaelch/mediaelch-doc
 - [English] https://kodi.wiki/view/MediaElch
 - [German] https://wiki.ubuntuusers.de/MediaElch


.. _Launchpad: https://launchpad.net/
.. _open build service: https://openbuildservice.org/

.. todo::

  Not done, yet.
