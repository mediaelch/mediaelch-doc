================================
FAQ - Frequently Asked Questions
================================

.. contents::
   :local:
   :depth: 1

What is MediaElch's intent on monetizing?
=========================================

MediaElch will always be free and always be open-source.
Both MediaElch's author and MediaElch's current maintainer have agreed on that:

 - see https://github.com/Komet/MediaElch/issues/1048


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


Will MediaElch be a paid application in the future?
===================================================

**No**. MediaElch was, is and will remain an open-source project.
We will not charge for anything.

However, meta-data providers may become subscription-based in the future.
TheTvDb is one such example.  If that happens, MediaElch may still support
the provider but you will need to subscribe to their services.


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


Why don't all images from Fanart.tv appear?
===========================================

The Fanart.tv API only lets us request images that have at least **1** vote.
Images without votes won't appear in MediaElch. You can help Fanart.tv by
creating an account there and by upvoting images you like. A related GitHub
issue can be found at https://github.com/Komet/MediaElch/issues/858


Will MediaElch support other Media Centers than Kodi?
=====================================================

No.  There are too few contributors to MediaElch and maintaining support for Kodi
alone takes a lot of time.

But we will gladly accept pull requests on GitHub_.


Does MediaElch support all features of Kodi?
============================================

We try to be as compatible as possible to Kodi.  But we cannot always keep up
with Kodi's new features.  We will try to implement/add them as soon as possible
but some changes need time.  For example, MediaElch does not support multiple ratings, yet.


What alternatives to MediaElch exist?
=====================================

MediaElch may not solve all your issues and may not meet all your requirements.
If you need more features, you can ask us to add them of course.
But if you're missing many features, then you can always use another software:

 - Kodi's builtin scrapers
 - https://www.tinymediamanager.org/

For Music you may find MusicBrainz Picard  interesting:

- https://picard.musicbrainz.org/

You can find more at https://kodi.wiki/view/Supplemental_tools

.. _GitHub: https://github.com/Komet/MediaElch
