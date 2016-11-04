\version "2.19.49"

\include "../common.ly"

global = {
  \key e \major
  \time 4/4
  \aikenHeads
}

title = "Just For Today"
songNumber = \just_for_today_number

\header {
  title = \title
  tune = "FATHER GOD"
  meter = "10.10.10.10"
  composer = "Marc Schelske (1995)"
  poet = "Marc Schelske (1995)"
  songNumber = \songNumber
  songNumber_lhs = \just_for_today_number_lhs
  songNumber_rhs = \just_for_today_number_rhs
  copyright = \markup { \char ##x00A9 " Copyright 1995 Marc Schelske Music." }
  license = "CCLI Song #1984677, License #2055442"
  arranger = "Shane Coffman"
  tagline = ##f
  scripture = \markup {
    \override #'(line-width . 70)
    \center-column {
      \vspace #2
      \abs-fontsize #24
      \italic \wordwrap-string #"TBD"
    }
  }
}

sheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break

  s4  | \noBreak
  s1  | \noBreak
  s1  | \break

  s1  | \noBreak
  s2. \bar "|."
}

sheetMusicRefrainBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "|."
}

%{
slideMusicVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}
%}

sopranoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  e8 fis8 |
  gis2~ gis8 gis8 a8. gis16 |
  gis4( fis2)
  
  gis8 fis8 |
  e2~ e8 e8 a8 gis8 |
  gis4.( a16 gis16 fis4)
  
  e8 fis8 |
  gis2~ gis8 gis16 a8. b8 |
  b8( gis16 fis16 fis2.) |
  
  gis8 gis4 gis8 fis8. fis16 fis8 dis8 |
  e4( e16 fis16 gis8 fis4) \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  b8 dis8 |
  e2~ e8 e8 e8. e16 |
  dis2.
  
  e8 dis8 |
  cis2~ cis8 cis8 e8 e8 |
  e2( dis4)
  
  cis8 dis8 |
  e2~ e8 e16 e8. gis8 |
  fis1 |
  e8 e4 e8 dis8. dis16 dis8 dis8 |
  cis4( cis16 dis16 e8 dis4) \bar "|."
}

tenorVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  gis8 b8 |
  b2~ b8 b8 cis8. b16 |
  b2.
  
  b8 b8 |
  a2~ a8 a8 cis8 cis8 |
  b2.
  
  gis8 b8 |
  b2~ b8 b16 cis8. e8 |
  dis1 |
  
  cis8 cis4 gis8 b8. b16 b8 b8 |
  a4.( cis8 b4) \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials { \partial 4 }
  e8 b8 |
  e2~ e8 e8 e8. e16 |
  b2.
  
  b8 b8 |
  a2~ a8 a8 a8 a8 |
  e'2( b4)
  
  b8 b8 |
  e2~ e8 e16 e8. e8 |
  b1 |
  
  cis8 cis4 cis8 b8. b16 b8 b8 |
  a2( b4) \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Fa -- ther God, just for to -- day,
  help me walk Your nar -- row way.
  Help me stand when I could fall,
  Give me the strength to hear Your call.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Here I am, just for to -- day,
  live in me, \markup { \musicglyph #"rests.3" } have Your way.
  my de -- sire when all is done,
  is just to hear You say, "\"Well" "done!\""
}

%{
verseThree = \lyricmode {
  \set stanza = "3. "
  I need thy pres -- ence eve -- ry pass -- ing hour.
  What but Thy grace can foil the tempt -- er's pow'r?
  Who like Thy -- self my guide and stay can be?
  Through cloud and sun -- shine, Lord, a -- bide with me.
}

verseFour = \lyricmode {
  \set stanza = "4. "
  I fear no foe, with Thee at hand to bless;
  Ills have no weight, and tears no bit -- ter -- ness;
  Where is death's sting? Where, grave, thy vic -- to -- ry?
  I tri -- umph still, if Thou a -- bide with me.
}

verseFive = \lyricmode {
  \set stanza = "5. "
  Hold Thou Thy cross be -- fore my clos -- ing eyes;
  Shine thru the gloom and point me to the skies;
  Heav'n's morn -- ing breaks, and earth's vain sha -- dows flee;
  In life, in death, O Lord, a -- bide with me.
}
%}