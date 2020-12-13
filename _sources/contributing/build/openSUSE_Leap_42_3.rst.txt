============================
openSUSE Leap 42.3 and later
============================

Dependencies
**********************************************************
Follow the instructions on https://wiki.qt.io/Install_Qt_5_on_openSUSE |br|
Select the latest stable Qt version (e.g. 5.10.1) with "Desktop gcc 64-bit" enabled.

.. code-block:: sh

    # Install development tools
    sudo zypper install --type pattern devel_basis
    # Install other dependencies
    sudo zypper install libmediainfo0 libmediainfo-devel libpulse-devel
    # Install OpenGL headers. Alternative OpenGL headers will work as well.
    sudo zypper install Mesa-libGL-devel
    # Install a newer version of GCC (Leap 42.3 uses GCC 4.8.5)
    sudo zypper install gcc7 gcc7-c++

Note that MediaElch needs ffmpeg to create screenshots.
ffmpeg itself requires multimedia codecs. Please refer to
http://opensuse-guide.org/codecs.php to learn how to install them.
Then install ffmpeg.

.. code-block:: sh

    sudo zypper install ffmpeg

To be able to build MediaElch using the command line, don't forget to
add the ``bin`` directory of the previously installed Qt version to
your ``$PATH``. For example add following to your ``~/.bashrc``:

.. code-block:: sh

    export PATH=$PATH:$HOME/Qt/5.10.1/gcc_64/bin

Build
**********************************************************
.. code-block:: sh

    git clone https://github.com/Komet/MediaElch.git && cd MediaElch
    git submodule update --init
    mkdir build && cd $_
    qmake ..
    make -j4

Install
**********************************************************
Run following command after building MediaElch to install it on your system.

.. code-block:: sh

    sudo make install


.. |br| raw:: html

   <br />
