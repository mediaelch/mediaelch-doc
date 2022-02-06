========
Download
========

.. warning::

   TheTvDb has stopped working from October on.  MediaElch has removed support for TheTvDb in the next version v2.8.14.
   Please switch to either TMDb or IMDb.  Some features such as "show all episodes" no longer work.


MediaElch binaries are available for macOS, Linux (AppImage_ + repositories) and
Windows (ZIP + `chocolatey package`_).

Nightlies can be downloaded from https://mediaelch-downloads.ameyering.de/snapshots/ .
Please note that nightlies are **not** stable. APIs may not work as expected.
The server is also hosted by our team.  If the server is down, please contact us.

*See also:* :doc:`Install MediaElch <installation>`.

+-------------------+--------------------+-----------------------------------------------+
| System (64 bit)   | Version            | Download                                      |
+===================+====================+===============================================+
| Windows           | 2.8.14  (GitHub)   | |gh_pages_release|                            |
+-------------------+--------------------+-----------------------------------------------+
|                   | 2.8.14  (Mirror)   | |mirror_release|                              |
+-------------------+--------------------+-----------------------------------------------+
|                   | latest (unstable)  | |mirror_nightly_windows|                      |
+-------------------+--------------------+-----------------------------------------------+
| macOS             | 2.8.14  (GitHub)   | |gh_pages_release|                            |
+-------------------+--------------------+-----------------------------------------------+
|                   | 2.8.14  (Mirror)   | |mirror_release|                              |
+-------------------+--------------------+-----------------------------------------------+
|                   | latest (unstable)  | |mirror_nightly_macOS|                        |
+-------------------+--------------------+-----------------------------------------------+
| Linux (AppImage)  | 2.8.14  (GitHub)   | |gh_pages_release|                            |
+-------------------+--------------------+-----------------------------------------------+
|                   | 2.8.14  (Mirror)   | |mirror_release|                              |
+-------------------+--------------------+-----------------------------------------------+
|                   | latest (unstable)  | |mirror_nightly_linux|                        |
+-------------------+--------------------+-----------------------------------------------+

.. note::

    Supported systems are:
      - Windows 8 and 10 and later
      - macOS 10.13 and later
      - Ubuntu 18.04 and later
      - openSUSE Tumbleweed, 15.2 and later

    Supported architectures are only 64-bit x86 systems.
    32-bit systems are not officially supported.


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

.. |gh_pages_release| image:: https://img.shields.io/badge/version-v2.8.14-blue.svg
   :target: https://github.com/Komet/MediaElch/releases/tag/v2.8.14

.. |mirror_release| image:: https://img.shields.io/badge/version-v2.8.14-blue.svg
   :target: https://mediaelch-downloads.ameyering.de/releases/v2.8.14/

.. |mirror_nightly_linux| image:: https://img.shields.io/badge/Linux-v2.8.15--dev-blue.svg
   :target: https://mediaelch-downloads.ameyering.de/snapshots/Linux/

.. |mirror_nightly_macOS| image:: https://img.shields.io/badge/macOS-v2.8.15--dev-blue.svg
   :target: https://mediaelch-downloads.ameyering.de/snapshots/macOS/

.. |mirror_nightly_windows| image:: https://img.shields.io/badge/Windows-v2.8.15--dev-blue.svg
   :target: https://mediaelch-downloads.ameyering.de/snapshots/Windows/


Source Code
===========
MediaElch is open source! The source code is located on GitHub: https://github.com/Komet/MediaElch
