#!/usr/bin/env bash

# This script creates a folders structure according to
# https://kodi.wiki/view/Naming_video_files/Movies
# and
# https://kodi.wiki/view/Naming_video_files/TV_shows

set -Eeuo pipefail
IFS=$'\n\t'

# Go to parent directory
cd "$(dirname "${BASH_SOURCE[0]}")/.." > /dev/null 2>&1

rm -rf examples
mkdir -p examples/
cd examples

mkdir movies
mkdir tv_shows

cd movies

mkdir "Big Buck Bunny (2008)" && cd $_
touch "Big Buck Bunny (2008).mkv"
cd ..

mkdir "Lucy (2014)" && cd $_
mkdir AUDIO_TS
mkdir VIDEO_TS
cd ..

mkdir "Paul (2011)" && cd $_
mkdir "BDMV"
mkdir "CERTIFICATE"
cd ..

cd ../tv_shows
mkdir "Angel (1999)" && cd $_
mkdir "Season "{01,02,03}
cd "Season 01"
touch "S01E0"{1,2,3}.mkv
cd ..
cd "Season 02"
touch "S02E0"{1,2,3}.mkv
cd ..
cd "Season 03"
touch "S03E0"{1,2,3}.mkv
