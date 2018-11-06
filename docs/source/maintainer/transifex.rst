================
Transifex / i18n
================

This page describes how to update translations locally and on transifex.com

You need to install the `Transifex client <https://docs.transifex.com/client/installing-the-client>`_.

.. code-block:: sh

    export TX_TOKEN=<your_Transifex_API_token>
	cd MediaElch
    tx --version
    tx status
    tx pull -a -f
    lupdate -verbose -no-obsolete MediaElch.pro
    tx push -s -t # Update sources and translations.
    lrelease # TODO
    git add i18n
    git commit -m "[i18n] Update translations from transifex"
