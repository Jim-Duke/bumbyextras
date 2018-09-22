# Building the Bumby Extras Hymnal on Windows
The following instructions have been tested on Windows 10 on 09/21/2018

## Windows Linux Subsystem approach

Currently the only build process supported requires Windows 10 and the use of the Windows Linux Subsystem (WSL).

## Windows Tools

- [Frescobaldi](http://www.frescobaldi.org/): a Lilypond editor.
  Version Tested: 3.0.0
- [Lilypond](http://lilypond.org): The Music Engraving program.
  Verison Tested: 2.19.82

## Ubuntu tools

- Jekyll - for the GitHub pages static website builder
- ImageMagick - for making thumbnails of PDF's
- pdftk - for adding backgrounds to slides
- fluidsynth - for converting MIDI files to WAV files
- lame - for converting WAV files to MP3 files

## Installing Windows Linux Subsystem

Follow the instructions found [here](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

## Setup a Ruby/Jekyll dev environment

    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo apt-get install zlib1g
    sudo apt-add-repository ppa:brightbox/ruby-ng
    sudo apt-get update
    sudo apt-get install ruby2.5 ruby2.5-dev build-essential dh-autoreconf
    sudo gem install jekyll bundler

Test out the install

    jekyll -v

Configure the bundler/gem path so bundle doesn't prompt for sudo

    bundle config path vendor/bundle

## Install ImageMagick

    sudo apt-get install imagemagick

## Install pdftk

    sudo add-apt-repository ppa:malteworld/ppa
    sudo apt update
    sudo apt install pdftk

## Install FluidSynth

    sudo apt-get install fluidsynth

## install lame

    sudo apt-get install lame