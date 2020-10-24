======================
Create an Export Theme
======================

.. contents::
   :local:
   :depth: 1

You can also create a new export theme in a few steps:


Installing the Dummy theme
--------------------------

At first you should install the "Dummy Theme".
The files will be located at the following places:

 - Mac OS: ``/Users/username/Library/Application Support/kvibes/MediaElch/export_themes/dummy``
 - Linux: ``/home/username/.local/share/kvibes/MediaElch/export_themes/dummy``
 - Windows: ``C:\Users\username\AppData\Local\kvibes\MediaElch\export_themes\dummy``

Now just rename the dummy folder as you like. The new name should not
contain any special characters or spaces and match the name of your theme.

Adjust the themes metadata
^^^^^^^^^^^^^^^^^^^^^^^^^^

Open ``metadata.xml`` and adjust the information inside:

 - ``name`` should be the name of your theme
 - ``identifier`` needs to be an unique identifier and exactly match the folder name you chose before
 - ``website`` should be a link to the theme's website (optional)
 - add ``description`` tags in languages you want, e.g. ``<description lang="de">...</description>``
 - ``author`` should be your name
 - ``version`` needs to be a numeric version of the format ```major.minor[.patch]``
 - ``medialech-min`` needs to be a numeric version of the oldest supported version of MediaElch, e.g. ``2.6.6``
 - ``medialech-max`` should only be set if there are known issues with a certain MediaElch version
 - ``supports`` contains the sections which could be exported with your theme
   - ``section`` supported section, can appear multiple times. Possible values: ``movies``, ``tvshows``, ``concerts``
 - ``engine`` should have the value ``simple`` as there is currently only one supported export engine

If you want to have your theme available for all MediaElch users, open an issue in MediaElch's meta repository:
https://github.com/mediaelch/mediaelch-meta


Customizing the templates
--------------------------

All other files are just plain HTML files with some placeholders.

If you place other files inside your theme folder as the ones mentioned
below they will be copied on export. This means you can also create subfolders
like css or js and put files inside this folders.

The placeholders will look like ``{{ MOVIE.TITLE }}`` (case and spaces matter).
If there are blocks of information (a loop) it will be inside a block
placeholder ``{{ BEGIN_BLOCK_GENRES }}...{{ END_BLOCK_GENRES }}``.

Images will be resized to the size you want: ``{{ IMAGE.POSTER[200, 400] }}`` |br|
This will insert an image with the maximum size of ``200px`` width and ``400px`` height,
aspect ratio will be kept. For every image you include you should place a default
image (png format) in the defaults folder which should be named (for example):
``movie_poster_200x400.png``

Movies
^^^^^^

``movies.html`` is a list view which should show the movies title. |br|
``movies/movie.html`` is the template for all information about a movie

TV Shows and Episodes
^^^^^^^^^^^^^^^^^^^^^

``tvshows.html`` is a list view which should show the TV shows title. |br|
``tvshows/tvshow.html`` is the template for all information about
the show and should contain a list of all episodes. |br|
``episodes/episode.html`` should contain all information about an episode.

Concerts
^^^^^^^^

*concerts.html* is a list view which should show the concerts title. |br|
``concerts/concert.html`` is the template for all information about a concert.


Publishing your theme
---------------------

As MediaElch is available for free it would be nice if you would share
your created theme. Just create a zip archive and send it to
support@mediaelch.de. Thank you!

.. |br| raw:: html

   <br />

Placeholders
------------

Here is a list of all placeholders that are available:

.. code-block:: sh

  {{ BEGIN_BLOCK_MOVIE }}
      {{ MOVIE.ID }}
      {{ MOVIE.LINK }}
      {{ MOVIE.IMDB_ID }}
      {{ MOVIE.TMDB_ID }}
      {{ MOVIE.TITLE }}
      {{ MOVIE.YEAR }}
      {{ MOVIE.ORIGINAL_TITLE }}
      {{ MOVIE.PLOT }}
      {{ MOVIE.PLOT_SIMPLE }}
      {{ MOVIE.SET }}
      {{ MOVIE.TAGLINE }}
      {{ MOVIE.GENRES }}
      {{ MOVIE.COUNTRIES }}
      {{ MOVIE.STUDIOS }}
      {{ MOVIE.TAGS }}
      {{ MOVIE.WRITER }}
      {{ MOVIE.DIRECTOR }}
      {{ MOVIE.CERTIFICATION }}
      {{ MOVIE.TRAILER }}
      {{ MOVIE.LABEL }}                   # Color label
      {{ MOVIE.RATING }}
      {{ MOVIE.VOTES  }}
      {{ MOVIE.RUNTIME }}
      {{ MOVIE.PLAY_COUNT  }}
      {{ MOVIE.LAST_PLAYED }}
      {{ MOVIE.DATE_ADDED }}
      {{ MOVIE.FILE_LAST_MODIFIED }}
      {{ MOVIE.FILENAME }}
      {{ MOVIE.DIR }}
      # all file information (see section "File Info")
      {{ IMAGE.POSTER[width, height] }}
      {{ IMAGE.FANART[width, height] }}
      {{ IMAGE.LOGO[width, height] }}
      {{ IMAGE.CLEARART[width, height] }}
      {{ IMAGE.DISC[width, height] }}
      {{ BEGIN_BLOCK_TAGS }}
          {{ TAG.NAME }}
      {{ END_BLOCK_TAGS }}
      {{ BEGIN_BLOCK_GENRES }}
          {{ GENRE.NAME }}
      {{ END_BLOCK_GENRES }}
      {{ BEGIN_BLOCK_COUNTRIES }}
          {{ COUNTRY.NAME }}
      {{ END_BLOCK_COUNTRIES }}
      {{ BEGIN_BLOCK_STUDIOS }}
          {{ STUDIO.NAME }}
      {{ END_BLOCK_STUDIOS }}
      {{ BEGIN_BLOCK_ACTORS }}
          {{ ACTOR.NAME }}
          {{ ACTOR.ROLE }}
      {{ END_BLOCK_ACTORS }}
  {{ END_BLOCK_MOVIE }}

  {{ BEGIN_BLOCK_CONCERT }}
      {{ CONCERT.ID }}
      {{ CONCERT.LINK }}
      {{ CONCERT.TITLE }}
      {{ CONCERT.ARTIST }}
      {{ CONCERT.ALBUM }}
      {{ CONCERT.TAGLINE }}
      {{ CONCERT.RATING }}
      {{ CONCERT.YEAR }}
      {{ CONCERT.RUNTIME }}
      {{ CONCERT.CERTIFICATION }}
      {{ CONCERT.TRAILER }}
      {{ CONCERT.PLAY_COUNT }}
      {{ CONCERT.LAST_PLAYED }}

      # The next 2 exist since v2.6.7-dev
      {{ CONCERT.FILENAME }}
      {{ CONCERT.DIR }}

      {{ CONCERT.PLOT }}
      {{ CONCERT.TAGS }}
      {{ CONCERT.GENRES }}
      # all file information (see section "File Info")
      {{ BEGIN_BLOCK_TAGS }}
          {{ TAG.NAME }}
      {{ END_BLOCK_TAGS }}
      {{ BEGIN_BLOCK_GENRES }}
          {{ GENRE.NAME }}
      {{ END_BLOCK_GENRES }}
      {{ IMAGE.POSTER[width, height] }}
      {{ IMAGE.FANART[width, height] }}
      {{ IMAGE.LOGO[width, height] }}
      {{ IMAGE.CLEARART[width, height] }}
      {{ IMAGE.DISC[width, height] }}
  {{ END_BLOCK_CONCERT }}

  {{ BEGIN_BLOCK_TVSHOW }}
      {{ TVSHOW.ID }}
      {{ TVSHOW.LINK }}
      {{ TVSHOW.IMDB_ID }}
      {{ TVSHOW.TITLE }}
      {{ TVSHOW.RATING }}
      {{ TVSHOW.VOTES }}
      {{ TVSHOW.CERTIFICATION }}
      {{ TVSHOW.FIRST_AIRED }}
      {{ TVSHOW.STUDIO }}
      {{ TVSHOW.PLOT }}
      {{ TVSHOW.TAGS }}
      {{ TVSHOW.GENRES }}
      {{ TVSHOW.SEASONS_AMOUNT }}
      {{ BEGIN_BLOCK_TAGS }}
          {{ TAG.NAME }}
      {{ END_BLOCK_TAGS }}
      {{ BEGIN_BLOCK_GENRES }}
          {{ GENRE.NAME }}
      {{ END_BLOCK_GENRES }}
      {{ BEGIN_BLOCK_ACTORS }}
          {{ ACTOR.NAME }}
          {{ ACTOR.ROLE }}
      {{ END_BLOCK_ACTORS }}
      {{ IMAGE.POSTER[width, height] }}
      {{ IMAGE.FANART[width, height] }}
      {{ IMAGE.LOGO[width, height] }}
      {{ IMAGE.BANNER[width, height] }}
      {{ IMAGE.CLEARART[width, height] }}
      {{ IMAGE.CHARACTERART[width, height] }}
      {{ IMAGE.DISC[width, height] }}

      {{ BEGIN_BLOCK_SEASON }}
          {{ SEASON }}
          {{ SHOW.TITLE }}
          {{ SHOW.LINK }}
          {{ BEGIN_BLOCK_EPISODE }}
              {{ EPISODE.LINK }}
              {{ EPISODE.TITLE }}
              {{ EPISODE.SEASON }}
              {{ EPISODE.EPISODE }}
              {{ EPISODE.RATING }}
              {{ EPISODE.CERTIFICATION }}
              {{ EPISODE.FIRST_AIRED }}
              {{ EPISODE.LAST_PLAYED }}
              {{ EPISODE.STUDIO }}
              {{ EPISODE.PLOT }}
              {{ EPISODE.WRITERS }}
              {{ EPISODE.DIRECTORS }}
              {{ EPISODE.FILENAME }}
              {{ EPISODE.DIR }}
              # all file information (see section "File Info")
              {{ BEGIN_BLOCK_WRITERS }}
                  {{ WRITER.NAME }}
              {{ END_BLOCK_WRITERS }}
              {{ BEGIN_BLOCK_DIRECTORS }}
                  {{ DIRECTOR.NAME }}
              {{ END_BLOCK_DIRECTORS }}
              {{ IMAGE.THUMBNAIL[width, height] }}
          {{ END_BLOCK_EPISODE }}
      {{ END_BLOCK_SEASON }}

  {{ END_BLOCK_TVSHOW }}

 
File Info
^^^^^^^^^

.. code-block:: sh

  {{ FILEINFO.WIDTH }}
  {{ FILEINFO.HEIGHT }}
  {{ FILEINFO.ASPECT }}
  {{ FILEINFO.CODEC }}
  {{ FILEINFO.DURATION }}
  {{ FILEINFO.AUDIO.CODEC }}        # all audio codecs joined by "|"
  {{ FILEINFO.AUDIO.CHANNELS }}     # all audio channels joined by "|"
  {{ FILEINFO.AUDIO.LANGUAGE }}     # all audio languages joined by "|"
  {{ FILEINFO.SUBTITLES.LANGUAGE }} # all subtitle languages joined by "|"
