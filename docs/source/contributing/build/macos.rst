=====
macOS
=====

MediaElch is build upon Qt. Qt itself requires macOS 10.12 or later and therefore
MediaElch does as well.

Install XCode (e.g. through the `Mac App Store <https://itunes.apple.com/de/app/xcode/id497799835>`_)
and `Homebrew <https://brew.sh/>`_. Instead of XCode you can also just install the
`XCode Command Line Tools <https://developer.apple.com/library/content/technotes/tn2339/_index.html#//apple_ref/doc/uid/DTS40014588-CH1-WHAT_IS_THE_COMMAND_LINE_TOOLS_PACKAGE_>`_
(open a Terminal and execute ``xcode-select --install``).


Command Line Build
**********************************************************

.. code-block:: sh

    # [Optional] Install git (it should have already been installed by XCode)
    brew install git

    # Install tools and dependencies
    brew install subversion qt media-info ffmpeg

    # Clone MediaElch
    git clone https://github.com/Komet/MediaElch.git && cd MediaElch
    git submodule update --init

    # Download necessary headers
    svn checkout https://github.com/MediaArea/MediaInfoLib/trunk/Source/MediaInfoDLL
    svn checkout https://github.com/MediaArea/ZenLib/trunk/Source/ZenLib

    # Build MediaElch
    mkdir build && cd $_
    qmake ..
    make -j4


QtCreator Build
**********************************************************

Download the `Qt online installer`_. Run it and select the latest Qt
version for installation (e.g. ``Qt 5.10.1``).
Check that following components are selected:

 - macOS
 - QtCreator

Download the `MediaElch source code <https://github.com/Komet/MediaElch>`_
by clicking "Download" or using git: |br|
``git clone https://github.com/Komet/MediaElch.git && git submodule update --init``.

You have to download `ffmpeg for Windows <https://evermeet.cx/ffmpeg/>`_ to be able
to create random screenshots of video files. After building MediaElch, place ``ffmpeg``
inside ``MediaElch.app/Contents/MacOS``.

Other Libraries
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 1. Install MediaInfo as it is required for MediaElch to get stream details. |br|
    Install it using Homebrew: ``brew install media-info``
 2. Download `MediaInfoLib <https://github.com/MediaArea/MediaInfoLib>`_. |br|
    Copy the folder ``Source/MediaInfoDLL`` to ``path/to/MediaElch/MediaInfoDLL``
 3. Download `ZenLib <https://github.com/MediaArea/ZenLib>`_.
    Copy the folder ``Source/ZenLib`` to ``path/to/MediaElch/ZenLib``

Build
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Start QtCreator and open ``/path/to/MediaElch/MediaElch.pro``. |br|
Configure it as "Release" and click "Run" (``Strg+R``).


.. todo::

   Add build instructions using MacPorts instead of Homebrew.


.. _Qt online installer:
.. _QtCreator: https://www.qt.io/download

.. |br| raw:: html

   <br />