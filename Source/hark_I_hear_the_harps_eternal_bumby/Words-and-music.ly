\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/midi.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 3/4
  \tempo 4=90
}

MajorKey = ##t

Title = "Hark! I Hear the Harps Eternal!"
SongNumber = \hark_I_hear_the_harps_eternal_bumby_number

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 3 - DO" }
}

number_on_rhs = \hark_I_hear_the_harps_eternal_bumby_number_rhs

FirstPage = #(if hark_I_hear_the_harps_eternal_bumby_number_rhs 1 2)

Scripture = "And I heard a voice from heaven, like the
             sound of many waters and like the sound of loud thunder, and the
             voice which I heard was like the sound of harpists playing on
             their harps. - Revelation 14:2"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  songNumber = \SongNumber
  lhs = #(if hark_I_hear_the_harps_eternal_bumby_number_rhs LeaderHints hark_I_hear_the_harps_eternal_bumby_number)
  rhs = #(if hark_I_hear_the_harps_eternal_bumby_number_rhs hark_I_hear_the_harps_eternal_bumby_number LeaderHints)
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

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
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

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
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

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
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

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
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

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
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

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
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

SopranoChorusMusic = \relative c'' {
  \tag #'usePartials { \partial 4 }
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

AltoChorusMusic = \relative c'' {
  \tag #'usePartials { \partial 4 }
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

TenorChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
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

BassChorusMusic = \relative c {
  \tag #'usePartials { \partial 4 }
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

AlignChorusMusic = \relative c'' {
  \tag #'usePartials { \partial 4 }
  c8 c8 |
  c4 c4 c8 c8 |
  c4 c4

  c8 c8 |
  c4 c4 c8 c8 |
  c2

  c8 c8 |
  c4 c4 c8 c8 |
  c4 d4

  c8 c8 |
  c4 c4 c8 c8 |
  c2 \bar "|."
}

SheetMusicChorusBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
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

SlidesChorusBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
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

VerseOne = \lyricmode {
  \set stanza = "1. "
  Hark! I hear the harps e -- ter -- nal,
  Ring -- ing on the far -- ther shore,
  As I near those swoll -- en wa -- ters,
  With their deep and sol -- emn roar.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  And my soul, tho' stained with sor -- row,
  Fad -- ing as the light of day,
  Pass -- es swift -- ly o'er those wat -- ers,
  To the ci -- ty far a -- way.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Souls have crossed be -- fore me, saint -- ly,
  To that land of per -- fect rest;
  And I hear them sing -- ing faint -- ly,
  In the mans -- ions of the blest.
}

ChorusLyrics = \lyricmode {
  Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah! Praise the Lamb!

  Hal -- le -- lu -- jah! Hal -- le -- lu -- jah!
  Glo -- ry to the great I AM!
}
