=========================================================
Test MediaElch
=========================================================

Tests are written using `Catch2`_. They are categorized into online/offline
tests and some other categories.

.. code-block:: sh

    mkdir build && cd $_           # Create build directory
    qmake .. CONFIG+=test          # Configure build for tests
    make -j$(nproc)                # Build tests

    # Below are some commands for the test executable
    ./mediaelch-test -h            # List Catch2 help
    ./mediaelch-test -t            # List all tags
    ./mediaelch-test -d yes        # Run *all* tests and print duration
    ./mediaelch-test "[load_data]" # Run scraping tests (online test)
    ./mediaelch-test "[search]"    # Run scraping search tests (online test)


.. _Catch2: https://github.com/catchorg/Catch2
