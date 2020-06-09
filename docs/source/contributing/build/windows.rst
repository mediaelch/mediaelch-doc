=======
Windows
=======

Dependencies
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Qt
----------------------------------------------------------
Download the `Qt online installer`_. Run it and select the latest Qt version
for installation (e.g. ``Qt 5.15.0`` with ``MinGW 8.1.0 32-bit`` in it).
Then select ``MinGW 8.1.0 32-bit`` in section ``Developer and Designer Tools``.
The first option installs QT Creator, qmake etc. The second option installs
GCC, GDB etc. 

Optional: If you want you can also choose ``QT Creator CDB Debugger Support``
and ``Debugging Tools for Windows`` in section ``Developer and Designer Tools``.

Other Libraries
----------------------------------------------------------
 1. Download precompiled `MediaInfo <https://mediaarea.net/de/MediaInfo/Download/Windows>`_ (DLL)
 2. Download `MediaInfoLib <https://github.com/MediaArea/MediaInfoLib>`_. |br|
    Copy the folder ``Source/MediaInfoDLL`` to ``path/to/MediaElch/MediaInfoDLL``
 3. Download `ZenLib <https://github.com/MediaArea/ZenLib>`_. |br|
    Copy the folder ``Source/ZenLib`` to ``path/to/MediaElch/ZenLib`` |br|
 4. Download and run `MSYS2 installer <https://www.msys2.org/>`_. |br|
    Install ``mingw-w64-i686-quazip`` using included `pacman <https://www.msys2.org/>`_ utility |br|
    Copy the folder ``msys64/mingw32/include/quazip5`` to ``path/to/MediaElch/quazip5`` |br|
    Copy the file ``msys64/mingw32/include/zconf.h`` to ``path/to/MediaElch/quazip5/zconf.h`` |br|
    Copy the file ``msys64/mingw32/include/zlib.h`` to ``path/to/MediaElch/quazip5/zlib.h`` |br|
    Copy the file ``msys64/mingw32/bin/libquazip5.dll`` to ``path/to/Qt/Tools/mingw810_32/lib/gcc/i686-w64-mingw32/8.1.0/libquazip5.dll`` (The version ``8.1.0`` matches your "Qt with MinGW" installation.)

Build
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Open the MediaElch project (``path/to/MediaElch/MediaElch.pro``) using
QtCreator, configure it (one click on the ``Build & Run > Desktop Qt 5.15.0 MinGW 32-bit > Build``
in the ``Projects`` ribbon is enough), insert ``CONFIG += USE_EXTERN_QUAZIP``
on the new line at the top of ``path/to/MediaElch/MediaElch.pro`` and click
"Run" (``Strg+R``). (The version ``5.15.0`` matches your "Qt with MinGW" installation.)

ffmpeg executable
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
You have to download `ffmpeg <https://ffmpeg.zeranoe.com/builds/>`_ to be able
to create random screenshots of video files. After building MediaElch place
``ffmpeg`` inside a new folder ``vendor`` which must be placed in the same
directory as ``MediaElch.exe``.


.. _Qt online installer: https://www.qt.io/download

.. |br| raw:: html

   <br />
