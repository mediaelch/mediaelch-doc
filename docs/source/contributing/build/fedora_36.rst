============================
Fedora 36 and later
============================

This document describes how to build MediaElch for Fedora 36 or later.
In contrast to other build instructions, we use Qt 6 here.

Dependencies
**********************************************************

Use the following to execute a build in a fresh toolbox or on the host:

.. code-block:: sh

    sudo dnf install \
      qt6-qtbase-devel \ 
      qt6-qtmultimedia \
      qt6-qtmultimedia-devel \
      qt6-qttools \
      qt6-qttools-devel \
      qt6-qtdeclarative-devel \
      qt6-svg  \
      qt6-svg-devel \
      qt6-qt5compat-devel \
      qt6-qt5compat \
      libmediainfo-devel

Build
**********************************************************

.. code-block:: sh

    git clone https://github.com/Komet/MediaElch.git
    cd MediaElch
    git submodule update --init
    mkdir build && cd build
    qmake ..
    make -j4

Install
**********************************************************

Run following command after building MediaElch to install it on your system.

.. code-block:: sh

    sudo make install
