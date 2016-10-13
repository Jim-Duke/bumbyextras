# Bumby Extras
Bumby Extras is a supplementary hymnal used by the church of Christ at South Bumby in Orlando Florida.  This repository contains the [Lilypond](http://lilypond.org/ "Lilypond") source files that are used to create the various output formats used as well as other files used to integrate these hymns into the other software used at South Bumby.

## Repository Organization

The basic structure of this repository has the basic project files such as this README.md file and three main directories outlined below:

- **Documentation**  
  Miscellaneous documentation including process documentation and other useful references.

- **Published**  
  This directory contains an image of the hymnal as it should be published to the shared dropbox folder used by the South Bumby song leaders and media handlers.

- **Source**  
  Contains the source material for the hymns; the lilypond files, original sheet music, and notes.

- **Template**  
  Contains various files used when creating a new hymn in the source area.

### Source Area Layout

Within each hymn directory there will be at least 4 files:

1. Sheet-Music.ly -
   The Lilypond file that creates the Letter sized sheet music as well as the MIDI output.
2. Slides.ly -
   The Lilypond file that creates the PNG images used for powerpoint slides.
3. words-and-music.ly -
   The Lilypond file that contains the words, music, and other data about the
   hymn.  This file is included in Sheet-Music.ly and Slides.ly.
4. README.md -
   A file that provides notes about the hymn, including the copyright and license terms for the hymn.


## Licensing and Copyright

Each hymn has its own copyright and licensing terms.  The repository itself, apart from the hymns, is not under copyright.

## How to Build the Hymns

Currently we use a very manual process.  The following describes the process under Windows.  Details for the various operating systems are described in separate build instruction files listed below.

- [Windows Build Instructions](windows_build.md)
- [MAC Build Instructions](mac_build.md)
- [Linux Build Instructions](linux_build.md)

## Process for Adding Songs

Every song in the hymnal goes through a rigorous process to ensure that it is of high quality both in terms of content, but also in technical construction.  This process is laid in more detail in [Hymn Addition Process](Documentation/hymn_addition_process.md)