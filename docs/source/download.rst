========
Download
========

MediaElch binaries are available for macOS, Linux (AppImage_ + repositories) and
Windows (ZIP + `chocolatey package`_).

Nightlies can be downloaded from https://bintray.com/komet/MediaElch (choose your system -> click on tab "Files" -> select version).
Please note that nightlies are **not** stable. APIs may not work as expected.

*See also:* :doc:`Install MediaElch <installation>`.

+-------------------+-------------------+-----------------------------------------------+
| System (64 bit)   | Version           | Download                                      |
+===================+===================+===============================================+
| Windows           | 2.6.2             | |gh_pages_262|                                |
+-------------------+-------------------+-----------------------------------------------+
|                   | latest (unstable) | |bintray-win|                                 |
+-------------------+-------------------+-----------------------------------------------+
| macOS             | 2.6.2             | |gh_pages_262|                                |
+-------------------+-------------------+-----------------------------------------------+
|                   | latest (unstable) | |bintray-mac|                                 |
+-------------------+-------------------+-----------------------------------------------+
| Linux (AppImage)  | 2.6.2             | |gh_pages_262|                                |
+-------------------+-------------------+-----------------------------------------------+
|                   | latest (unstable) | |bintray-linux|                               |
+-------------------+-------------------+-----------------------------------------------+

.. note::

   The AppImage requires Ubuntu 16.04 or above (or similar systems).
   Ubuntu 14.04 is not supported anymore.


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
Ubuntu 16.04 and above are supported.

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

openSUSE Leap 15.0, 15.1 and Tumbleweed are supported.

Or you can install MediaElch per command line: 

.. code-block:: sh

    # openSUSE Tumbleweed
    zypper addrepo https://download.opensuse.org/repositories/home:bugwelle/openSUSE_Tumbleweed/home:bugwelle.repo
    zypper refresh
    zypper install MediaElch

    # openSUSE Leap 15.0
    zypper addrepo https://download.opensuse.org/repositories/home:bugwelle/openSUSE_Leap_15.0/home:bugwelle.repo
    zypper refresh
    zypper install MediaElch

    # openSUSE Leap 15.1
    zypper addrepo https://download.opensuse.org/repositories/home:bugwelle/openSUSE_Leap_15.1/home:bugwelle.repo
    zypper refresh
    zypper install MediaElch



.. _AppImage: https://appimage.org/

.. _chocolatey package: https://chocolatey.org/packages/MediaElch

.. |gh_pages_262| image:: https://img.shields.io/badge/version-v2.6.2-blue.svg
   :target: https://github.com/Komet/MediaElch/releases/tag/v2.6.2

.. |bintray-win| image:: https://api.bintray.com/packages/komet/MediaElch/MediaElch-win/images/download.svg
   :target: https://bintray.com/komet/MediaElch/MediaElch-win/_latestVersion

.. |bintray-mac| image:: https://api.bintray.com/packages/komet/MediaElch/MediaElch-macOS/images/download.svg
   :target: https://bintray.com/komet/MediaElch/MediaElch-macOS/_latestVersion

.. |bintray-linux| image:: https://api.bintray.com/packages/komet/MediaElch/MediaElch-linux/images/download.svg
   :target: https://bintray.com/komet/MediaElch/MediaElch-linux/_latestVersion
