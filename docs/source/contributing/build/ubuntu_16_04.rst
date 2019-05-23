============
Ubuntu 16.04
============

Dependencies
**********************************************************

.. code-block:: sh

    # Required for `add-apt-repository`
    sudo apt install software-properties-common

    # MediaElch requires a more modern GCC:
    sudo add-apt-repository ppa:ubuntu-toolchain-r/test
    sudo apt update
    sudo apt install g++-8 gcc-8
    sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 90
    sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 90

    # Build tools and other libraries
    sudo apt install build-essential git libcurl4-openssl-dev
    sudo apt install libmediainfo-dev
    # ffmpeg is required at runtime to create random screenshots
    sudo apt install ffmpeg

    # Qt (alternative: download and install Qt from its official website)
    sudo apt install qt5-default qtmultimedia5-dev qtdeclarative5-dev \
                     qtdeclarative5-controls-plugin qtdeclarative5-models-plugin


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

