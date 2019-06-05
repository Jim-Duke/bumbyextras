\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key g \major
  \time 4/4
  \tempo 2 = 90
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "I'm Gonna View That Holy City"
SongNumber = \im_gonna_view_that_holy_city_fc_number
RightFirstPage = \im_gonna_view_that_holy_city_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G - 2 - SOL" }
}

Scripture = "“And I saw the holy city, new Jerusalem, coming down out of heaven from God” (Revelation 21:2a, NASB95)"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "THAT HOLY CITY"
  meter = "Irregular"
  composer = "Traditional"
  poet = "Traditional"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Arr. Copyright 1993 by Howard Publishing, Co. Inc."
  license = ##f
  tagline = ##f
}

SopranoVerseBody = \relative c' {
  d4 r4 r4 e8 d8 |
  g4
  \tag #'sheetMusic { g8~ g8 a8~ a8 }
  \tag #'verseOne { g4 a4 }
  \tag #'verseTwo { g4 a4 }
  \tag #'verseThree { g8 g8 a4 }
  \tag #'verseFour { g4 a4 }
  \tag #'verseFive { g4 a8 a8 }
  g4 |
  r4
  \tag #'sheetMusic { b2( a4 | g2) }
  \tag #'verseOne { b2( a4) | g2 }
  \tag #'verseTwo { b2( a4) | g2 }
  \tag #'verseThree { b2( a4) | g2 }
  \tag #'verseFour { b2( a4) | g2 }
  \tag #'verseFive { b2( a4 | g2) }
   b2 |
   
   a4( g4) r4 e8 e8 |
   g4
  \tag #'sheetMusic { g8~ g8 a8~ a8 }
  \tag #'verseOne { g4 a4 }
  \tag #'verseTwo { g4 a4 }
  \tag #'verseThree { g8 g8 a4 }
  \tag #'verseFour { g4 a4 }
  \tag #'verseFive { g4 a8 a8 }
  e4 |
  \tag #'sheetMusic { g4( e4) }
  \tag #'verseOne { g4 e4 }
  \tag #'verseTwo { g4 e4 }
  \tag #'verseThree { g4 e4 }
  \tag #'verseFour { g4 e4 }
  \tag #'verseFive { g4( e4) }
  g8 g8 g4 |
  e4( d2.) |

  d4 r4 r4 e8 d8 |
  g4
  \tag #'sheetMusic { g8~ g8 a8~ a8 }
  \tag #'verseOne { g4 a4 }
  \tag #'verseTwo { g4 a4 }
  \tag #'verseThree { g8 g8 a4 }
  \tag #'verseFour { g4 a4 }
  \tag #'verseFive { g4 a8 a8 }
  g4 |
  r4
  \tag #'sheetMusic { b2( a4 | g2) }
  \tag #'verseOne { b2( a4) | g2 }
  \tag #'verseTwo { b2( a4) | g2 }
  \tag #'verseThree { b2( a4) | g2 }
  \tag #'verseFour { b2( a4) | g2 }
  \tag #'verseFive { b2( a4 | g2) }
   g4 g8 g8 |
}

SopranoVerseRepeat = \relative c'' {
  \bar ".|:"
  b4
  \tag #'sheetMusic { b8~ b8 b8~ b8 }
  \tag #'verseOne { b4 b4 }
  \tag #'verseTwo { b4 b4 }
  \tag #'verseThree { b8 b8 b4 }
  \tag #'verseFour { b4 b4 }
  \tag #'verseFive { b4 b8 b8 }
  a4 |
  \tag #'sheetMusic { g4~ g4\fermata }
  \tag #'verseOne { g4 g4 }
  \tag #'verseTwo { g4 g4 }
  \tag #'verseThree { g4 g4 }
  \tag #'verseFour { g4 g4 }
  \tag #'verseFive { g2 }
  \bar ":|."
}

SopranoVerseMidiRepeat = \relative c'' {
  \bar ".|:"
  b4
  \tag #'sheetMusic { b8~ b8 b8~ b8 }
  \tag #'verseOne { b4 b4 }
  \tag #'verseTwo { b4 b4 }
  \tag #'verseThree { b8 b8 b4 }
  \tag #'verseFour { b4 b4 }
  \tag #'verseFive { b4 b8 b8 }
  a4 |
  \tag #'sheetMusic { g4~ g4\fermata }
  \tag #'verseOne { g4 g4 }
  \tag #'verseTwo { g4 g2. }
  \tag #'verseThree { g4 g2. }
  \tag #'verseFour { g4 g2. }
  \tag #'verseFive { g1 }
  \bar ":|."
}

SopranoVerseEnd = \relative c'' {
  a8 a8 a4 |
  g2 a8 a8 a4 |
  g1 \bar "|."
}

AltoVerseBody = \relative c' {
  b4 r4 r4 c8 b8 |
  d4
  \tag #'sheetMusic { d8~ d8 e8~ e8 }
  \tag #'verseOne { d4 e4 }
  \tag #'verseTwo { d4 e4 }
  \tag #'verseThree { d8 d8 e4 }
  \tag #'verseFour { d4 e4 }
  \tag #'verseFive { d4 e8 e8 }
  d4 |
  r4
  \tag #'sheetMusic { g2( e4 | d2) }
  \tag #'verseOne { g2( e4) | d2 }
  \tag #'verseTwo { g2( e4) | d2 }
  \tag #'verseThree { g2( e4) | d2 }
  \tag #'verseFour { g2( e4) | d2 }
  \tag #'verseFive { g2( e4 | d2) }
  g2 |
  
  e2 r4 e8 e8 |
  e4
  \tag #'sheetMusic { e8~ e8 e8~ e8 }
  \tag #'verseOne { e4 e4 }
  \tag #'verseTwo { e4 e4 }
  \tag #'verseThree { e8 e8 e4 }
  \tag #'verseFour { e4 e4 }
  \tag #'verseFive { e4 e8 e8 }
  e4 |
  \tag #'sheetMusic { e4( e4) }
  \tag #'verseOne { e4 e4 }
  \tag #'verseTwo { e4 e4 }
  \tag #'verseThree { e4 e4 }
  \tag #'verseFour { e4 e4 }
  \tag #'verseFive { e4( e4) }
  e8 e8 e4 |
  c4( b2.) |

  b4 r4 r4 c8 b8 |
  d4
  \tag #'sheetMusic { d8~ d8 e8~ e8 }
  \tag #'verseOne { d4 e4 }
  \tag #'verseTwo { d4 e4 }
  \tag #'verseThree { d8 d8 e4 }
  \tag #'verseFour { d4 e4 }
  \tag #'verseFive { d4 e8 e8 }
  d4 |
  r4
  \tag #'sheetMusic { g2( fis4 | e2) }
  \tag #'verseOne { g2( fis4) | e2 }
  \tag #'verseTwo { g2( fis4) | e2 }
  \tag #'verseThree { g2( fis4) | e2 }
  \tag #'verseFour { g2( fis4) | e2 }
  \tag #'verseFive { g2( fis4 | e2) }
  e4 e8 e8 |
}

AltoVerseRepeat = \relative c'' {
  g4
  \tag #'sheetMusic { g8~ g8 g8~ g8 }
  \tag #'verseOne { g4 g4 }
  \tag #'verseTwo { g4 g4 }
  \tag #'verseThree { g8 g8 g4 }
  \tag #'verseFour { g4 g4 }
  \tag #'verseFive { g4 g8 g8 }
  fis4 |
  \tag #'sheetMusic { e4~ e4\fermata }
  \tag #'verseOne { e4 e4 }
  \tag #'verseTwo { e4 e4 }
  \tag #'verseThree { e4 e4 }
  \tag #'verseFour { e4 e4 }
  \tag #'verseFive { e2 }
}

AltoVerseMidiRepeat = \relative c'' {
  g4
  \tag #'sheetMusic { g8~ g8 g8~ g8 }
  \tag #'verseOne { g4 g4 }
  \tag #'verseTwo { g4 g4 }
  \tag #'verseThree { g8 g8 g4 }
  \tag #'verseFour { g4 g4 }
  \tag #'verseFive { g4 g8 g8 }
  fis4 |
  \tag #'sheetMusic { e4~ e4\fermata }
  \tag #'verseOne { e4 e4 }
  \tag #'verseTwo { e4 e2. }
  \tag #'verseThree { e4 e2. }
  \tag #'verseFour { e4 e2. }
  \tag #'verseFive { e1 }
}

AltoVerseEnd = \relative c' {
  e8 e8 e4 |
  d2 e8 e8 e4 |
  d1 \bar "|."
}

TenorVerseBody = \relative c' {
  g4 r4 r4 g8 g8 |
  b4
  \tag #'sheetMusic { b8~ b8 c8~ c8 }
  \tag #'verseOne { b4 c4 }
  \tag #'verseTwo { b4 c4 }
  \tag #'verseThree { b8 b8 c4 }
  \tag #'verseFour { b4 c4 }
  \tag #'verseFive { b4 c8 c8 }
  b4 |
  r4
  \tag #'sheetMusic { d2( c4 | b2) }
  \tag #'verseOne { d2( c4) | b2 }
  \tag #'verseTwo { d2( c4) | b2 }
  \tag #'verseThree { d2( c4) | b2 }
  \tag #'verseFour { d2( c4) | b2 }
  \tag #'verseFive { d2( c4 | b2) }
  d2 |
  
  c2 r4 c8 c8 |
  c4
  \tag #'sheetMusic { c8~ c8 c8~ c8 }
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c4 c4 }
  \tag #'verseThree { c8 c8 c4 }
  \tag #'verseFour { c4 c4 }
  \tag #'verseFive { c4 c8 c8 }
  c4 |
  \tag #'sheetMusic { c4( c4) }
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c4 c4 }
  \tag #'verseThree { c4 c4 }
  \tag #'verseFour { c4 c4 }
  \tag #'verseFive { c4( c4) }
  c8 c8 c4 |
  g1 |

  g4 r4 r4 g8 g8 |
  b4
  \tag #'sheetMusic { b8~ b8 c8~ c8 }
  \tag #'verseOne { b4 c4 }
  \tag #'verseTwo { b4 c4 }
  \tag #'verseThree { b8 b8 c4 }
  \tag #'verseFour { b4 c4 }
  \tag #'verseFive { b4 c8 c8 }
  b4 |
  r4
  \tag #'sheetMusic { d2.( | c2) }
  \tag #'verseOne { d2. | c2 }
  \tag #'verseTwo { d2. | c2 }
  \tag #'verseThree { d2. | c2 }
  \tag #'verseFour { d2. | c2 }
  \tag #'verseFive { d2. | c2) }
  c4 c8 c8 |
}

TenorVerseRepeat = \relative c' {
  d4
  \tag #'sheetMusic { d8~ d8 d8~ d8 }
  \tag #'verseOne { d4 d4 }
  \tag #'verseTwo { d4 d4 }
  \tag #'verseThree { d8 d8 d4 }
  \tag #'verseFour { d4 d4 }
  \tag #'verseFive { d4 d8 d8 }
  d4 |
  \tag #'sheetMusic { c4~ c4\fermata }
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c4 c4 }
  \tag #'verseThree { c4 c4 }
  \tag #'verseFour { c4 c4 }
  \tag #'verseFive { c2 }
}

TenorVerseMidiRepeat = \relative c' {
  d4
  \tag #'sheetMusic { d8~ d8 d8~ d8 }
  \tag #'verseOne { d4 d4 }
  \tag #'verseTwo { d4 d4 }
  \tag #'verseThree { d8 d8 d4 }
  \tag #'verseFour { d4 d4 }
  \tag #'verseFive { d4 d8 d8 }
  d4 |
  \tag #'sheetMusic { c4~ c4\fermata }
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c4 c2. }
  \tag #'verseThree { c4 c2. }
  \tag #'verseFour { c4 c2. }
  \tag #'verseFive { c1 }
}

TenorVerseEnd = \relative c' {
  c8 c8 c4 |
  b2 c8 c8 c4 |
  b1 \bar "|."
}

BassVerseBody = \relative c {
  g4 r4 r4 g8 g8 |
  g4
  \tag #'sheetMusic { g8~ g8 g8~ g8 }
  \tag #'verseOne { g4 g4 }
  \tag #'verseTwo { g4 g4 }
  \tag #'verseThree { g8 g8 g4 }
  \tag #'verseFour { g4 g4 }
  \tag #'verseFive { g4 g8 g8 }
  g4 |
  r4
  \tag #'sheetMusic { g2.( | g2) }
  \tag #'verseOne { g2. | g2 }
  \tag #'verseTwo { g2. | g2 }
  \tag #'verseThree { g2. | g2 }
  \tag #'verseFour { g2. | g2 }
  \tag #'verseFive { g2.~ | g2 }
  b2 |
  
  c2 r4 c8 c8 |
  c4
  \tag #'sheetMusic { c8~ c8 c8~ c8 }
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c4 c4 }
  \tag #'verseThree { c8 c8 c4 }
  \tag #'verseFour { c4 c4 }
  \tag #'verseFive { c4 c8 c8 }
  c4 |
  \tag #'sheetMusic { c4( c4) }
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c4 c4 }
  \tag #'verseThree { c4 c4 }
  \tag #'verseFour { c4 c4 }
  \tag #'verseFive { c4( c4) }
  c8 c8 c4 |
  g1 |

  g4 r4 r4 g8 g8 |
  g4
  \tag #'sheetMusic { g8~ g8 g8~ g8 }
  \tag #'verseOne { g4 g4 }
  \tag #'verseTwo { g4 g4 }
  \tag #'verseThree { g8 g8 g4 }
  \tag #'verseFour { g4 g4 }
  \tag #'verseFive { g4 g8 g8 }
  g4 |
  r4
  \tag #'sheetMusic { g2.( | c2) }
  \tag #'verseOne { g2. | c2 }
  \tag #'verseTwo { g2. | c2 }
  \tag #'verseThree { g2. | c2 }
  \tag #'verseFour { g2. | c2 }
  \tag #'verseFive { g2.( | c2) }
  c4 c8 c8 |
}

BassVerseRepeat = \relative c {
  g4
  \tag #'sheetMusic { g8~ g8 g8~ g8 }
  \tag #'verseOne { g4 g4 }
  \tag #'verseTwo { g4 g4 }
  \tag #'verseThree { g8 g8 g4 }
  \tag #'verseFour { g4 g4 }
  \tag #'verseFive { g4 g8 g8 }
  b4 |
  \tag #'sheetMusic { c4~ c4\fermata }
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c4 c4 }
  \tag #'verseThree { c4 c4 }
  \tag #'verseFour { c4 c4 }
  \tag #'verseFive { c2 }
}

BassVerseMidiRepeat = \relative c {
  g4
  \tag #'sheetMusic { g8~ g8 g8~ g8 }
  \tag #'verseOne { g4 g4 }
  \tag #'verseTwo { g4 g4 }
  \tag #'verseThree { g8 g8 g4 }
  \tag #'verseFour { g4 g4 }
  \tag #'verseFive { g4 g8 g8 }
  b4 |
  \tag #'sheetMusic { c4~ c4\fermata }
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c4 c2. }
  \tag #'verseThree { c4 c2. }
  \tag #'verseFour { c4 c2. }
  \tag #'verseFive { c1 }
}

BassVerseEnd = \relative c {
  c8 c8 c4 |
  g2 c8 c8 c4 |
  g1 \bar "|."
}

SheetMusicVerseBodyBreaks = {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
}

SheetMusicVerseRepeatBreaks = {
  s1 | \noBreak
  s2 \bar ":|." \noBreak
}

SheetMusicVerseEndBreaks = {
  s2 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBodyBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  I'm gon -- na view that Ho -- ly Ci -- ty.
  Oh, I'm gon -- na view that Ho -- ly Ci -- ty one of these days.
  I'm gon -- na view that Ho -- ly Ci -- ty.
  I'm gon -- na view that Ho -- ly Ci -- ty,
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  I'm gon -- na meet my lov -- ing Je -- sus.
  Oh, I'm gon -- na meet my lov -- ing Je -- sus one of these days.
  I'm gon -- na meet my lov -- ing Je -- sus.
  I'm gon -- na meet my lov -- ing Je -- sus.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  I'm gon -- na sit at the ban -- quet ta -- ble.
  Oh, I'm gon -- na sit at the ban -- quet ta -- ble one of these days.
  I'm gon -- na sit at the ban -- quet ta -- ble.
  I'm gon -- na sit at the ban -- quet ta -- ble.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  I'm gon -- na feast on milk and hon -- ey.
  Oh, I'm gon -- na feast on milk and hon -- ey one of these days.
  I'm gon -- na feast on milk and hon -- ey.
  I'm gon -- na feast on milk and hon -- ey.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  I'm gon -- na sing and nev -- er get tired.
  Oh, I'm gon -- na sing and nev -- er get tired one of these days.
  I'm gon -- na sing and nev -- er get tired.
  I'm gon -- na sing and nev -- er get tired.
}

Tag = \lyricmode {
  one of these days, one of these days.
}