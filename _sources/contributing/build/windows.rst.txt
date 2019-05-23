=======
Windows
=======

Dependencies
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Qt
----------------------------------------------------------
Download the `Qt online installer`_. Run it and select the latest Qt version
for installation (e.g. ``Qt 5.10.1``). Select "MinGW 5.3.0" in section ``Tools``.

Other Libraries
----------------------------------------------------------
 1. Download precompiled `MediaInfo <https://mediaarea.net/de/MediaInfo/Download/Windows>`_ (DLL)
 2. Download `MediaInfoLib <https://github.com/MediaArea/MediaInfoLib>`_. |br|
    Copy the folder ``Source/MediaInfoDLL`` to ``path/to/MediaElch/MediaInfoDLL``
 3. Download `ZenLib <https://github.com/MediaArea/ZenLib>`_. |br|
    Copy the folder ``Source/ZenLib`` to ``path/to/MediaElch/ZenLib``

Build
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Open the MediaElch project using QtCreator, configure it and click "Run" (``Strg+R``).

ffmpeg
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
You have to download `ffmpeg <https://ffmpeg.zeranoe.com/builds/>`_ to be able
to create random screenshots of video files. After building MediaElch place
``ffmpeg`` inside a new folder ``vendor`` which must be placed in the same
directory as ``MediaElch.exe``.


.. _Qt online installer: https://www.qt.io/download

.. |br| raw:: html

   <br />
