============================
openSUSE Leap 15 and later
============================

Note: These instructions still use Qt 5.  For Qt 6 instructions, see
the openSUSE Tumbleweed build instructions.

Dependencies
**********************************************************

Follow the instructions on https://wiki.qt.io/Install_Qt_5_on_openSUSE |br|
Select the latest stable Qt version (e.g. 5.15.2) with "Desktop gcc 64-bit" enabled.
Alternatively, you can also install Qt using zypper (see second code block below).

.. code-block:: sh

    # Install development tools
    sudo zypper install --type pattern devel_basis
    # Install other dependencies
    sudo zypper install libmediainfo0 libmediainfo-devel libpulse-devel
    # Install OpenGL headers. Alternative OpenGL headers will work as well.
    sudo zypper install Mesa-libGL-devel
    # Install a newer version of GCC
    sudo zypper install gcc8 gcc8-c++


Install Qt using zypper:

.. code-block:: sh

    zypper install \
        libqt5-qtbase libqt5-qtdeclarative-devel libqt5-qtdeclarative-tools \
        libqt5-qtmultimedia-devel libqt5-qttools libqt5-qttools-devel \
        libqt5-qtsvg-devel libQt5Concurrent5 libQt5Concurrent-devel \
        libQt5OpenGL5 libQt5OpenGL-devel libQt5Sql-devel


Note that MediaElch needs ffmpeg to create screenshots.
ffmpeg itself requires multimedia codecs. Please refer to
https://opensuse-guide.org/codecs.php to learn how to install them.
Then install ffmpeg.

.. code-block:: sh

    sudo zypper install ffmpeg

To be able to build MediaElch using the command line, don't forget to
add the ``bin`` directory of the previously installed Qt version to
your ``$PATH``. For example add following to your ``~/.bashrc``:

.. code-block:: sh

    export PATH=$PATH:$HOME/Qt/5.15.2/gcc_64/bin


Build
**********************************************************

.. code-block:: sh

    # Optional, if you use non-default GCC
    export CXX=g++-8; export CC=gcc-8;
    # Clone with dependencies
    git clone --recursive --depth=1 https://github.com/Komet/MediaElch.git
    cd MediaElch
    mkdir build && cd build
    qmake ..
    make -j4


Install
**********************************************************

Run following command after building MediaElch to install it on your system.

.. code-block:: sh

    sudo make install


.. |br| raw:: html

   <br />
