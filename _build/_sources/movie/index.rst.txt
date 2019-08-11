=====
Movie
=====

.. warning::

   Work in progress


.. figure:: ../images/screenshots/movie-main.png
   :align: center
   :alt: Movie section

   The Movie section lists your movies which you can browse,
   scrape and edit.


Search/Scrape New Movies
------------------------

Scraping new movies in MediaElch is easy! Select the movie(s) you want to
load form e.g. **IMDb** oder **The Movie Db** and click on the scrape
button (``Ctrl+F``, see screenshot below). A new dialog will pop up in
which can select what information you want to load and you can select
the correct movie.


.. figure:: ../images/movie/movie-search-action.png
   :align: center
   :alt: Movie Search Action/Button

   The movie scrape/search button.


.. figure:: ../images/movie/movie-search-dialog.png
   :align: center
   :alt: Movie scrape dialog.

   The Movie scrape dialog with checkboxes for each data
   point you want to load (e.g. title, images, etc.)

.. note::

   You may wonder why some images are loaded in a different language than
   the one you've selected for your scraper in MediaElch's settings.

   This happens because not all images are actually loaded from the
   selected scraper. Many are loaded from fanart.tv. If this happens to
   you, make sure you have set the same language for fanart.tv as for
   your selected scraper.

Movie Sets
----------

If you have movies that belong to a set, e.g. "Harry Potter and the Philosopher's Stone"
which belongs to the Harry Potter Set/Franchise, they are listed here.

Movie Scrapers
--------------

Following tables list supported features for each movie scraper.

+----------------------+-------+---------+--------+--------------+---------+---------------+---------+----------+--------+----------+--------+--------+---------+-----------+--------+----------+------+---------------+-----+------+-------+----------+--------+-------+
| Scraper              | Title | Tagline | Rating | Release Date | Runtime | Certification | Trailer | Overview | Poster | Backdrop | Actors | Genres | Studios | Countries | Writer | Director | Tags | Extra Fanarts | Set | Logo | CdArt | ClearArt | Banner | Thumb |
+======================+=======+=========+========+==============+=========+===============+=========+==========+========+==========+========+========+=========+===========+========+==========+======+===============+=====+======+=======+==========+========+=======+
| The Movie DB         | yes   | yes     | yes    | yes          | yes     | yes           | yes     | yes      | yes    | yes      | yes    | yes    | yes     | yes       | yes    | yes      | no   | no            | yes | yes  | yes   | yes      | yes    | yes   |
+----------------------+-------+---------+--------+--------------+---------+---------------+---------+----------+--------+----------+--------+--------+---------+-----------+--------+----------+------+---------------+-----+------+-------+----------+--------+-------+
| IMDb                 | yes   | yes     | yes    | yes          | yes     | yes           | no      | yes      | yes    | no       | yes    | yes    | yes     | yes       | yes    | yes      | yes  | no            | no  | no   | no    | no       | no     | no    |
+----------------------+-------+---------+--------+--------------+---------+---------------+---------+----------+--------+----------+--------+--------+---------+-----------+--------+----------+------+---------------+-----+------+-------+----------+--------+-------+
| OFDb                 | yes   | no      | yes    | yes          | no      | no            | no      | yes      | yes    | no       | yes    | yes    | no      | yes       | no     | no       | no   | no            | no  | no   | no    | no       | no     | no    |
+----------------------+-------+---------+--------+--------------+---------+---------------+---------+----------+--------+----------+--------+--------+---------+-----------+--------+----------+------+---------------+-----+------+-------+----------+--------+-------+
| VideoBuster          | yes   | yes     | yes    | yes          | yes     | yes           | no      | yes      | yes    | yes      | yes    | yes    | yes     | yes       | no     | yes      | yes  | no            | no  | no   | no    | no       | no     | no    |
+----------------------+-------+---------+--------+--------------+---------+---------------+---------+----------+--------+----------+--------+--------+---------+-----------+--------+----------+------+---------------+-----+------+-------+----------+--------+-------+
| AEBN                 | yes   | no      | no     | yes          | yes     | no            | no      | yes      | yes    | no       | yes    | yes    | yes     | no        | no     | yes      | yes  | no            | yes | no   | no    | no       | no     | no    |
+----------------------+-------+---------+--------+--------------+---------+---------------+---------+----------+--------+----------+--------+--------+---------+-----------+--------+----------+------+---------------+-----+------+-------+----------+--------+-------+
| HotMovies            | yes   | no      | yes    | yes          | yes     | no            | no      | yes      | yes    | no       | yes    | yes    | yes     | no        | no     | yes      | no   | no            | yes | no   | no    | no       | no     | no    |
+----------------------+-------+---------+--------+--------------+---------+---------------+---------+----------+--------+----------+--------+--------+---------+-----------+--------+----------+------+---------------+-----+------+-------+----------+--------+-------+
| Adult DVD Empire     | yes   | no      | no     | yes          | yes     | no            | no      | yes      | yes    | yes      | yes    | yes    | yes     | no        | no     | yes      | no   | no            | yes | no   | no    | no       | no     | no    |
+----------------------+-------+---------+--------+--------------+---------+---------------+---------+----------+--------+----------+--------+--------+---------+-----------+--------+----------+------+---------------+-----+------+-------+----------+--------+-------+

Keyboard Shortcuts
------------------

+-------------------+----------------------------------------------------+
| Linux / Windows   | Description                                        |
+===================+====================================================+
| ``Ctrl+F``        | Scrape the selected movie(s).                      |
+-------------------+----------------------------------------------------+
| ``Ctrl+S``        | Save the selected movie(s).                        |
+-------------------+----------------------------------------------------+
| ``Ctrl+Shift-S``  | Save all movies                                    |
+-------------------+----------------------------------------------------+
| ``F5``            | Reload all movies                                  |
+-------------------+----------------------------------------------------+
| ``a`` - ``z``     | Scroll to movies beginning with the letter pressed |
+-------------------+----------------------------------------------------+
