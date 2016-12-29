\version "2.19.49"

\include "../common.ly"

global = {
  \key f \major
  \time 3/4
  \aikenHeads
}

title = "Hark I Hear the Harps Eternal"
songNumber = \hark_I_hear_the_harps_eternal_number
leaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 3 - DO" }
}
number_on_rhs = \hark_I_hear_the_harps_eternal_number_rhs

#(if number_on_rhs
     (begin
      (define lhs leaderHints)
      (define rhs songNumber))
     (begin
      (define lhs songNumber)
      (define rhs leaderHints)))


\header {
  title = "Hark! I Hear the Harps Eternal!"
  songNumber = \songNumber
  lhs = \lhs
  rhs = \rhs
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

sheetMusicVerseBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|."
}

slideMusicVerseBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "|."
}

sheetMusicChorusBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|."
}

slideMusicChorusBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "|."
}

sopranoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  f8 f |
  a4 a8.( g16) f8 f |
  g16( f8.) d4

  f8 f |
  a4 c f,8 f16( d) |
  f2

  f8 f |
  a4 a8.( g16) f8 f |
  g16( f8.) d4

  f8 f |
  a4 c f,8 f16( d) |
  f2 \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  c8 c |
  f4 f c8 c |
  d4 d

  d8 d |
  f4 f f8 f16( d) |
  c2

  c8 c |
  f4 f c8 c |
  d4 d

  d8 d |
  f4 f f8 f16( d) |
  c2 \bar "|."
}

tenorVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  a8 a |
  c4 c a8 a |
  d4 a

  a8 a |
  c4 a g8 g |
  a2

  a8 a |
  c4 c a8 a |
  d4 a

  a8 a |
  c4 a g8 g |
  a2 \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials' { \partial 4 }
  f8 f |
  f4 f f8 f |
  d4 d

  d8 d |
  c4 c c8 d |
  f2

  f8 f |
  f4 f f8 f |
  d4 d

  d8 d |
  c4 c c8 d |
  f2 \bar "|."
}

sopranoChorus = \relative c'' {
  \tag #'usePartials' { \partial 4 }
  c8 d16( f) |
  f4 c d8 c |
  c4 a

  c8 d16( f) |
  f4 c a8 c |
  d2

  f8 f16( d) |
  c4 a8.( g16) f8 f |
  g16( f8.) d4

  f8 f |
  a4 c f,8 f16( d) |
  f2 \bar "|."
}

altoChorus = \relative c'' {
  \tag #'usePartials' { \partial 4 }
  c8 d16( c) |
  a4 a a8 a |
  a4 f

  c'8 d16( c) |
  a4 a f8 f |
  a2

  a8 a |
  f4 f c8 c |
  a4 d

  d8 d |
  f4 f f8 f16( d) |
  c2 \bar "|."
}

tenorChorus = \relative c' {
  \tag #'usePartials' { \partial 4 }
  a8 a |
  c4 f f8 f |
  f4 c

  a8 a |
  c4 f c8 c |
  a2

  c8 c |
  a4 c a8 a |
  d4 a

  a8 a |
  c4 a a8 a |
  a2 \bar "|."
}

bassChorus = \relative c {
  \tag #'usePartials' { \partial 4 }
  f8 f |
  f4 f f8 f |
  f4 f

  f8 f |
  f4 f f8 f |
  d2

  f8 f |
  f4 f f8 f |
  d4 d

  d8 d |
  c4 c f8 f |
  f2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Hark! I hear the harps e -- ter -- nal,
  Ring -- ing on the far -- ther shore,
  As I near those swoll -- en wa -- ters,
  With their deep and sol -- emn roar.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  And my soul, tho' stained with sor -- row,
  Fad -- ing as the light of day,
  Pass -- es swift -- ly o'er those wat -- ers,
  To the ci -- ty far a -- way.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Souls have crossed be -- fore me, saint -- ly,
  To that land of per -- fect rest;
  And I hear them sing -- ing faint -- ly,
  In the mans -- ions of the blest.
}

chorus = \lyricmode {
  Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah! Praise the Lamb!

  Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
  Glo -- ry to the great I AM!
}
