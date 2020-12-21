========
Download
========

MediaElch binaries are available for macOS, Linux (AppImage_ + repositories) and
Windows (ZIP + `chocolatey package`_).

Nightlies can be downloaded from https://bintray.com/komet/MediaElch (choose your system -> click on tab "Files" -> select version).
Please note that nightlies are **not** stable. APIs may not work as expected.

*See also:* :doc:`Install MediaElch <installation>`.

+-------------------+--------------------+-----------------------------------------------+
| System (64 bit)   | Version            | Download                                      |
+===================+====================+===============================================+
| Windows           | 2.8.2  (GitHub)    | |gh_pages_282|                                |
+-------------------+--------------------+-----------------------------------------------+
|                   | 2.8.2  (mirror)    | |bintray_282|                                 |
+-------------------+--------------------+-----------------------------------------------+
|                   | latest (unstable)  | |bintray|                                     |
+-------------------+--------------------+-----------------------------------------------+
| macOS             | 2.8.2  (GitHub)    | |gh_pages_282|                                |
+-------------------+--------------------+-----------------------------------------------+
|                   | 2.8.2  (mirror)    | |bintray_282|                                 |
+-------------------+--------------------+-----------------------------------------------+
|                   | latest (unstable)  | |bintray|                                     |
+-------------------+--------------------+-----------------------------------------------+
| Linux (AppImage)  | 2.8.2  (GitHub)    | |gh_pages_282|                                |
+-------------------+--------------------+-----------------------------------------------+
|                   | 2.8.2  (mirror)    | |bintray_282|                                 |
+-------------------+--------------------+-----------------------------------------------+
|                   | latest (unstable)  | |bintray|                                     |
+-------------------+--------------------+-----------------------------------------------+

.. note::

  The AppImage has network issues at the moment.  We will update it in the next view days.


Windows Chocolatey
==================

We provide a chocolatey package for MediaElch.
If you have chocolatey installed, simply run:

.. code-block:: powershell

    choco install mediaelch
    # And to update MediaElch:
    choco upgrade mediaelch

You can find the package online at https://chocolatey.org/packages/MediaElch


Linux Repositories
==================

You can install MediaElch using your system's package manager. Use the AppImage if your system
is not supported.

Ubuntu
------

The official MediaElch PPA can be found at https://launchpad.net/~mediaelch/+archive/ubuntu/mediaelch-stable
Ubuntu 18.04 and above are supported.

.. code-block:: sh

    # Add the repository to your system
    sudo add-apt-repository ppa:mediaelch/mediaelch-stable
    sudo apt-get update
    # Install MediaElch
    sudo apt-get install mediaelch
    # Start MediaElch
    MediaElch


openSUSE
--------

openSUSE packages are available using the services of build.opensuse.org.
You can download MediaElch per 1-click-install from
https://software.opensuse.org/download.html?project=home%3Abugwelle&package=MediaElch

openSUSE Leap 15 and Tumbleweed are supported.

Or you can install MediaElch per command line: 

.. code-block:: sh

    # openSUSE Tumbleweed
    zypper addrepo https://download.opensuse.org/repositories/home:bugwelle/openSUSE_Tumbleweed/home:bugwelle.repo
    zypper refresh
    zypper install MediaElch

    # openSUSE Leap 15.2
    zypper addrepo https://download.opensuse.org/repositories/home:bugwelle/openSUSE_Leap_15.2/home:bugwelle.repo
    zypper refresh
    zypper install MediaElch



.. _AppImage: https://appimage.org/

.. _chocolatey package: https://chocolatey.org/packages/MediaElch

.. |gh_pages_282| image:: https://img.shields.io/badge/version-v2.8.2-blue.svg
   :target: https://github.com/Komet/MediaElch/releases/tag/v2.8.2

.. |bintray_282| image:: https://api.bintray.com/packages/bugwelle/MediaElch/MediaElch-Releases/images/download.svg?version=v2.8.2
   :target: https://bintray.com/bugwelle/MediaElch/MediaElch-Releases/v2.8.2#files

.. |bintray| image:: https://api.bintray.com/packages/bugwelle/MediaElch/MediaElch-Nightly/images/download.svg
   :target: https://bintray.com/bugwelle/MediaElch/MediaElch-Nightly/_latestVersion


Source Code
===========
MediaElch is open source! The source code is located on GitHub: https://github.com/Komet/MediaElch
