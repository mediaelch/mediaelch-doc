======================
Ubuntu 18.04 and 20.04
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
    sudo apt install qt5-default libqt5svg5 libqt5svg5-dev qtmultimedia5-dev qtdeclarative5-dev 
    # These are required for the linguist tool (for translations)
    sudo apt install qttools5-dev qttools5-dev-tools

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

