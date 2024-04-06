============================
openSUSE Tumbleweed
============================

Dependencies
**********************************************************

Install Qt 6 using zypper, as well as other dependencies.

.. code-block:: sh

    # Install Qt 6
    sudo zypper install \
        qt6-base-devel qt6-base-common-devel qt6-concurrent-devel \
        qt6-core-devel qt6-gui-devel qt6-imageformats-devel \
        qt6-multimedia-devel qt6-multimediawidgets-devel \
        qt6-qt5compat-devel qt6-sql-devel qt6-svg-devel \
        qt6-tools-devel quazip-qt6-devel qt6-linguist-devel

    # Install development tools
    sudo zypper install --type pattern devel_basis
    # Install other dependencies
    sudo zypper install libmediainfo0 libmediainfo-devel libpulse-devel
    # Install OpenGL headers. Alternative OpenGL headers will work as well.
    sudo zypper install Mesa-libGL-devel
    # Install other dev tools explicitly
    sudo zypper install git gcc 'gcc-c++' cmake


Note that MediaElch needs ffmpeg to create screenshots.
ffmpeg itself requires multimedia codecs. Please refer to
https://opensuse-guide.org/codecs.php to learn how to install them.
Then install ffmpeg.

.. code-block:: sh

    sudo zypper install ffmpeg


Build
**********************************************************

We're using four cores to build MediaElch below.  Adapt it if necessary.

.. code-block:: sh

    # Clone with dependencies
    git clone --recursive --depth=1 https://github.com/Komet/MediaElch.git
    cd MediaElch
    cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
    cmake --build build -j 4


Install
**********************************************************

Run following command after building MediaElch to install it on your system.

.. code-block:: sh

    sudo cmake --build build --target install


.. |br| raw:: html

   <br />

