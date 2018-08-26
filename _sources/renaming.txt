==============================
Renaming files and directories
==============================

MediaElch is able to rename your files and folders on a given pattern.
The "Renamer" allows you to build up a solid directory structure to
organize your movies, tv shows and more.

.. figure:: images/features/renamer-button.png
   :align: center
   :alt: Renamer Button

   The renamer button becomes active if items (movies/tv shows/...) are
   selected.

You are able to define how your files and folders should be named.
After clicking on "Rename selected files" (see image above) in the main
toolbar you see a bunch of placeholders which can be used for renaming:

Placeholders in angle brackets (``<...>``) are replaced by their actual
value. Playholders in curly brackets (``{...} ... {/...}``) are conditionals.
The content between them is only used if the condition is true.

Here's an example: Assume we have three movies

+-----+------------------+------+--------------------------------+
| No. | Movie            | Year | Other                          |
+=====+==================+======+================================+
|  1  | "Awesome Movie"  | 2000 | 3D movie                       |
+-----+------------------+------+--------------------------------+
|  2  | "Ordinary Movie" | 1999 |                                |
+-----+------------------+------+--------------------------------+
|  3  | "Sequel Movie"   | 2018 | movieset is "Movie collection" |
+-----+------------------+------+--------------------------------+

Using the following rename pattern

 - Folder: ``{movieset}<movieset> - {/movieset}<title> (<year>)``
 - File: ``<title>{3D}.3D{/3D}.<extension>``

the movies will be renamed to:

+-----+--------------------------------------------+------------------------------+
| No. | Folder                                     | Filename                     |
+=====+============================================+==============================+
|  1  | ``My Awesome Movie (2000)``                | ``My Awesome Movie.3D.mkv``  |
+-----+--------------------------------------------+------------------------------+
|  2  | ``Ordinary Movie (1999)``                  | ``Ordinary Movie.mkv``       |
+-----+--------------------------------------------+------------------------------+
|  3  | ``Movie Collection - Sequel Movie (2010)`` | ``Sequel Movie.mkv``         |
+-----+--------------------------------------------+------------------------------+

The following conditional placeholders are available:

 - ``{bluray}{/bluray}`` The movie is a bluray structure
 - ``{dvd}{/dvd}`` The movie is a dvd structure
 - ``{3D}{/3D}`` It's a 3D movie, you selected a stereo mode in the stream details tab (if not detected automatically)
 - ``{movieset}<movieset>{/movieset}`` The movieset is not empty
 - ``{imdbId}<imdbId>{/imdbId}`` The IMDB Id of the movie

If you are unsure if your rename pattern gives you the result you want, just hit
the "Dry Run" button. No file is renamed but you'll see the
resulting folder- and filenames if you were to actually rename them.
