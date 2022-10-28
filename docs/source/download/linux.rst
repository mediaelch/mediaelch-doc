============================
Download MediaElch for Linux
============================

MediaElch for Linux distributions is available as an AppImage_ and through
package managers.

**Officially supported systems are:**

  - Ubuntu 18.04 and later (PPA)
  - Ubuntu 16.04 and later (AppImage)
  - openSUSE Tumbleweed, 15.2 and later (OBS)


Linux AppImage
==================

+-------------------+--------------------+-----------------------------------------------+
| System (64 bit)   | Version            | Download                                      |
+===================+====================+===============================================+
| Linux (AppImage)  | 2.8.18  (GitHub)   | |gh_pages_release|                            |
+-------------------+--------------------+-----------------------------------------------+
|                   | 2.8.18  (Mirror)   | |mirror_release|                              |
+-------------------+--------------------+-----------------------------------------------+
|                   | latest (unstable)  | |mirror_nightly_linux|                        |
+-------------------+--------------------+-----------------------------------------------+


Linux Repositories
==================

You can install MediaElch using your system's package manager. Use the AppImage if your system
is not supported.

Ubuntu
------

The official MediaElch PPA can be found at `~mediaelch/mediaelch-stable <https://launchpad.net/~mediaelch/+archive/ubuntu/mediaelch-stable>`_

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
You can download MediaElch per 1-click-install from `home/bugwelle:MediaElch <https://software.opensuse.org/download.html?project=home%3Abugwelle&package=MediaElch>`_

Or you can install MediaElch per command line: 

.. code-block:: sh

    # openSUSE Tumbleweed
    sudo zypper addrepo https://download.opensuse.org/repositories/home:bugwelle/openSUSE_Tumbleweed/home:bugwelle.repo
    sudo zypper refresh
    sudo zypper install MediaElch

    # openSUSE Leap 15.2
    sudo zypper addrepo https://download.opensuse.org/repositories/home:bugwelle/openSUSE_Leap_15.2/home:bugwelle.repo
    sudo zypper refresh
    sudo zypper install MediaElch

    # openSUSE Leap 15.3
    sudo zypper addrepo https://download.opensuse.org/repositories/home:bugwelle/openSUSE_Leap_15.3/home:bugwelle.repo
    sudo zypper refresh
    sudo zypper install MediaElch

    # openSUSE Leap 15.4
    sudo zypper addrepo https://download.opensuse.org/repositories/home:/bugwelle/15.4/home:bugwelle.repo
    sudo zypper refresh
    sudo zypper install MediaElch


.. _AppImage: https://appimage.org/

.. |gh_pages_release| image:: ../images/badges/Version-v2.8.18.svg
   :target: https://github.com/Komet/MediaElch/releases/tag/v2.8.18

.. |mirror_release| image:: ../images/badges/Version-v2.8.18.svg
   :target: https://mediaelch-downloads.ameyering.de/releases/v2.8.18/

.. |mirror_nightly_linux| image:: ../images/badges/Linux-v2.8.19-dev.svg
   :target: https://mediaelch-downloads.ameyering.de/snapshots/Linux/
