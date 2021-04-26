======================
Ubuntu 21.04 and later
======================

Dependencies
**********************************************************

.. code-block:: sh

    # Build tools and other libraries
    sudo apt install build-essential git
    sudo apt install libcurl4-gnutls-dev # or libcurl4-openssl-dev
    sudo apt install libmediainfo-dev

    # ffmpeg is required at runtime to create random screenshots
    sudo apt install ffmpeg

    # Qt (alternative: download and install Qt from its official website)
    sudo apt install \
        qt5-qmake \
        qtbase5-dev \
        qtbase5-dev-tools \
        qtdeclarative5-dev \
        qtmultimedia5-dev \
        qttools5-dev \
        qttools5-dev-tools \
        libqt5opengl5 \
        libqt5opengl5-dev \
        libqt5svg5 \
        libqt5svg5-dev

Build
**********************************************************

.. code-block:: sh

    git clone https://github.com/Komet/MediaElch.git && cd MediaElch
    git submodule update --init
    mkdir build && cd build
    qmake ..
    make -j4

Install
**********************************************************
Run following command after building MediaElch to install it on your system.

.. code-block:: sh

    sudo make install

