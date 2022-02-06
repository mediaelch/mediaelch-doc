=======
Windows
=======

This page will take you through downloading, building and installing MediaElch from source.

Dependencies and Source Code
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Git and Source Code
----------------------------------------------------------

MediaElch uses Git aus its version control system.  Download and install it
from `git-scm.com <https://git-scm.com/download/win>`_.

Then open "Git Bash" and run the following commands. Lines starting with ``#`` are comments.


.. code-block:: sh

    # Get MediaElch's source code
    git clone https://github.com/Komet/MediaElch.git

    # Change into the newly created directory
    cd MediaElch

    # Get dependencies
    git submodule update --init


It should look like the following:

.. figure:: ../../images/build/windows/git-clone.png
   :align: center
   :alt: Setup MediaElch Git Repository

   Clone and setup MediaElch's source code.


Qt
----------------------------------------------------------

Download the `Qt online installer`_.  On the download page, you will need to
navigate to "Downloads for open source users" -> "Go open source" -> scroll down
-> "Download the Qt Inline Installer" -> "Download".  You will need a Qt account
to install Qt.  There may be other sources for Qt which are not discussed on
this page.

Run the installer and select Qt 5.15.2 with the following components:

- MinGW 8.1.0 64-bit
- Sources

Furthermore, further down in the installer, select the following "Developer and Designer Tools":

- Qt Creator
- Qt Design Studio
- MinGW 8.1.0 64-bit
- CMake
- Ninja
- OpenSSL 1.1.1j Toolkit

The installation will take a while.


.. figure:: ../../images/build/windows/qt-install-part-1.png
   :align: center
   :alt: Qt installer (Part 1)

   First part of MediaElch's Qt dependencies


.. figure:: ../../images/build/windows/qt-install-part-2.png
   :align: center
   :alt: Qt installer (Part 2)

   First part of MediaElch's Qt dependencies


Other Libraries
----------------------------------------------------------
 1. Download and install `MediaInfo (DLL) <https://mediaarea.net/en/MediaInfo/Download/Windows>`_
 2. Download `MediaInfoLib <https://github.com/MediaArea/MediaInfoLib>`_. |br|
 	Either use Git to clone the repository or click on "Code" -> "Download ZIP".
    Copy the folder ``Source/MediaInfoDLL`` to ``path/to/MediaElch/MediaInfoDLL``
 3. Download `ZenLib <https://github.com/MediaArea/ZenLib>`_. |br|
 	Either use Git to clone the repository or click on "Code" -> "Download ZIP".
    Copy the folder ``Source/ZenLib`` to ``path/to/MediaElch/ZenLib`` |br|


Build
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Open the MediaElch project (``MediaElch.pro``) using QtCreator.
In the new window, configure the project using the default values
(should be "Desktop Qt 5.15.2 MinGW 64-bit").

You can ignore any errors/warning regarding the command "sed".

On the bottom left, click on the "Run" button.
You can adapt the build directory in the "Projects" tab.

If the build was successfull, MediaElch will start.  Otherwise, read the error
messages to see whether it may be an issue with your setup. It could be that
the build directory could not be created or that a dependency is missing
(for example QuaZip) if you haven't initialized the Git submodules.

It may take between 5 to 20min to build MediaElch, depending on your
machine.


ffmpeg executable
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You have to download `ffmpeg <https://ffmpeg.zeranoe.com/builds/>`_ to be able
to create random screenshots of video files.  After building MediaElch place
``ffmpeg`` inside a new folder ``vendor`` which must be placed in the same
directory as ``MediaElch.exe``.




.. _Qt online installer: https://www.qt.io/download

.. |br| raw:: html

   <br />
