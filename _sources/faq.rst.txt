================================
FAQ - Frequently Asked Questions
================================

.. contents::
   :local:
   :depth: 1

Where are MediaElchs settings stored?
=====================================

MediaElch stores its settings in the usual places depending on your OS:

 * macOS: ``~/Library/Preferences/com.kvibes.MediaElch.plist``
 * Linux: ``~/.config/kvibes/MediaElch.conf``
 * Windows: Registry: ``HKEY_CURRENT_USER/Software/kvibes/MediaElch``

Temporary files, caches and the internal database are also stored in the default
storage locations depending on your OS:

 * macOS: ``~/Library/Application Support/kvibes/MediaElch/``
 * Linux: ``~/.local/share/kvibes/MediaElch/``
 * Windows: ``C:\Users\yourUserName\AppData\Local\kvibes\MediaElch\``

If you are using the portable mode (only available on Windows) then all settings
and temporary files are stored in the application directory itself.


Can I help translate MediaElch?
===============================

See :doc:`Contributing -> Translations <contributing/translations>`


What is the meaning of the little icons under each show title?
==============================================================

.. image:: images/tvshow_status_icons.png
   :alt: TV Show status icons

They show you what kind of artwork is missing (icon is red). From left to right:

 * Poster
 * Fanart
 * Extra Fanarts
 * Thumb
 * Logo
 * Clear Art
 * Character Art
 * Banner
