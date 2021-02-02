=================
Quick Start Guide
=================

MediaElch tries to be straight forward.  But some guidance is always useful!
This guide explains how you can add your media files to Kodi to start scraping.


Setup your Media Files
======================

MediaElch works best with Kodi.  So we recommend to use Kodi's folder
structures for your media files as well.

The recommended *movie* folder structure is to have a folder for each movie.
Below you find a screenshot of a commonly used folder structure for movies.
A movie can be a single video file (e.g. ``*.mkv`` or ``*.mov``), a DVD structure (``VIDEO_TS`` and ``AUDIO_TS`` directories) or BluRay structure (``BDMV`` directory).

Please refer to the `Kodi Movie Guide`_ for further details.

.. figure:: images/installation/movies-recommended-folder-structure.png
   :align: center
   :alt: Recommended folder structure for movies.

   MediaElch works best if you put each movie into its own folder.


The recommended *TV Show* folder structure is to have a folder for each TV show.
Each TV show folder has one or more season folders that in turn contain the episodes.
Below you find a screenshot of a commonly used folder structure for TV shows.

Please refer to the `Kodi TV Show Guide`_ for further details.


.. figure:: images/installation/tv-shows-recommended-folder-structure.png
   :align: center
   :alt: Recommended folder structure for TV shows.

   MediaElch works best if you put each TV show into its own folder and
   subdivide all episodes into one directory per season.


Add your Folders to MediaElch
=============================

After starting MediaElch, go to MediaElch's settings.
You can open the settings windows by clicking on the settings icon in the toolsbar.


.. figure:: images/installation/settings-action-icon.png
   :align: center
   :alt: Settings action icon.

   Click the settings icon to open the preferences window.


Then click on "Add" and select your media directory.
You can choose between different media types like "Movies" or "TV Shows".

.. figure:: images/installation/settings-add-media.png
   :align: center
   :alt: Add media directory to MediaElch.

   Click "Add" to select a media directory, e.g. containing your movies.


Please ensure that you have checked "Sep. Folders" (see screenshot below).
By enabling this option, MediaElch searches for separate directories according
to the structure described above.  Otherwise MediaElch simply searches for video files
that can be interpreted as movies.

.. figure:: images/installation/settings-separate-folders.png
   :align: center
   :alt: Enable the "Sep. Folders" option

   "Sep. Folders" option for movies


All that's left for you is to re-load all movies.
Simply click on the "Reload" icon in the toolbar and your movies should appear shortly after.

.. figure:: images/installation/reload-movies-action-icon.png
   :align: center
   :alt: Reload movies icon.

   Click "Reload" to reload all media files.


Start Scraping
==============

You can now start scraping!  See the individual sections in our documentation
for more details:

 - :doc:`Movies <movie/index>`
 - :doc:`TV Shows <tvshow/index>`
 - :doc:`Concerts <concert/index>`
 - :doc:`Music <music/index>`


.. _Kodi Movie Guide: https://kodi.wiki/view/Naming_video_files/Movies
.. _Kodi TV Show Guide: https://kodi.wiki/view/Naming_video_files/TV_shows
