\version "2.18.2"

\include "../common.ly"

global = {
  \key f \major
  \time 3/4
  \aikenHeads
}

\header {
  title = "Hark! I Hear the Harps Eternal"
  songNumber = \hark_I_hear_the_harps_eternal_number
  songNumber_lhs = \hark_I_hear_the_harps_eternal_number_lhs
  songNumber_rhs = \hark_I_hear_the_harps_eternal_number_rhs
  scripture = #"And I heard a voice from heaven, like the
         sound of many waters and like the sound of loud thunder, and the
         voice which I heard was like the sound of harpists playing on
         their harps. - Revelation 14:2"
  
  meter = "8.7.8.7"
  poet = "F. R. Warren"
  translator = ##f

  tune = "INVITATION NEW"
  composer = "North American Traditional"
  arranger = "Michael Duke"

  maintainer = "Jim Duke"
  maintainerEmail = "jim@dukeboys.org"
  maintainerWeb = ##f
  
  copyright = "In the Public Domain"
  license = ##f
}

sopranoVerse = \relative c' {
  % Phrase 1
  f8 f \noBreak
  a4 a8.( g16) f8 f \noBreak
  g16( f8.) d4 \bar ""

  % Phrase 2
  f8 f \noBreak
  a4 c f,8 f16( d) \noBreak
  f2 \bar ""

  % Phrase 3
  f8 f \noBreak
  a4 a8.( g16) f8 f \noBreak
  g16( f8.) d4 \bar ""

  % Phrase 4
  f8 f \noBreak
  a4 c f,8 f16( d) \noBreak
  f2 \bar "||"
}

altoVerse = \relative c' {
  % Phrase 1
  c8 c \noBreak
  f4 f c8 c \noBreak
  d4 d \bar ""

  % Phrase 2
  d8 d \noBreak
  f4 f f8 f16( d) \noBreak
  c2 \bar ""

  % Phrase 3
  c8 c \noBreak
  f4 f c8 c \noBreak
  d4 d \bar ""

  %Phrase 4
  d8 d \noBreak
  f4 f f8 f16( d) \noBreak
  c2 \bar "||"
}

tenorVerse = \relative c' {
  % Phrase 1
  a8 a \noBreak
  c4 c a8 a \noBreak
  d4 a
  \bar ""

  % Phrase 2
  a8 a \noBreak
  c4 a g8 g \noBreak
  a2
  \bar ""

  % Phrase 3
  a8 a \noBreak
  c4 c a8 a \noBreak
  d4 a \bar ""

  % Phrase 4
  a8 a \noBreak
  c4 a g8 g \noBreak
  a2 \bar "||"
}

bassVerse = \relative c {
  % Phrase 1
  f8 f \noBreak
  f4 f f8 f \noBreak
  d4 d \bar ""

  % Phrase 2
  d8 d \noBreak
  c4 c c8 d \noBreak
  f2 \bar ""

  % Phrase 3
  f8 f \noBreak
  f4 f f8 f \noBreak
  d4 d \bar ""

  % Phrase 4
  d8 d \noBreak
  c4 c c8 d \noBreak
  f2 \bar "||"
}

sopranoChorus = \relative c'' {
  % Phrase 1
  c8 d16( f) \noBreak
  f4 c d8 c \noBreak
  c4 a \bar ""

  % Phrase 2
  c8 d16( f) \noBreak
  f4 c a8 c \noBreak
  d2 \bar ""

  % Phrase 3
  f8 f16( d) \noBreak
  c4 a8.( g16) f8 f \noBreak
  g16( f8.) d4 \bar ""

  % Phrase 4
  f8 f \noBreak
  a4 c f,8 f16( d) \noBreak
  f2 \bar "|."
}

altoChorus = \relative c'' {
  % Phrase 1
  c8 d16( c) \noBreak
  a4 a a8 a \noBreak
  a4 f \bar ""

  % Phrase 2
  c'8 d16( c) \noBreak
  a4 a f8 f \noBreak
  a2 \bar ""

  % Phrase 3
  a8 a \noBreak
  f4 f c8 c \noBreak
  a4 d \bar ""

  % Phrase 4
  d8 d \noBreak
  f4 f f8 f16( d) \noBreak
  c2 \bar "|."
}

tenorChorus = \relative c' {
  % Phrase 1
  a8 a \noBreak
  c4 f f8 f \noBreak
  f4 c \bar ""

  % Phrase 2
  a8 a \noBreak
  c4 f c8 c \noBreak
  a2 \bar ""

  % Phrase 3
  c8 c \noBreak
  a4 c a8 a \noBreak
  d4 a \bar ""

  % Phrase 4
  a8 a \noBreak
  c4 a a8 a \noBreak
  a2 \bar ""
}

bassChorus = \relative c {
  % Phrase 1
  f8 f \noBreak
  f4 f f8 f \noBreak
  f4 f \bar ""

  % Phrase 2
  f8 f \noBreak
  f4 f f8 f \noBreak
  d2 \bar ""

  % Phrase 3
  f8 f \noBreak
  f4 f f8 f \noBreak
  d4 d \bar ""

  % Phrase 4
  d8 d \noBreak
  c4 c f8 f \noBreak
  f2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Hark! I hear the harps e -- ter -- nal
  Ring -- ing on the far -- ther shore,
  As I near those swoll -- en wa -- ters,
  With their deep and sol -- emn roar.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  And my soul, tho' stain'd with sor -- row,
  fad -- ing as the light of day,
  Pass -- es swift -- ly o'er those wat -- ers,
  To the ci -- ty far a -- way.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Souls have cross'd be -- fore me, saint -- ly,
  To that land of per -- fect rest;
  And I hear them sing -- ing faint -- ly,
  In the mans -- ions of the blest.
}

chorus = \lyricmode {
  Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah! Praise the Lamb!

  Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
  Glo -- ry to the Great I Am!
}