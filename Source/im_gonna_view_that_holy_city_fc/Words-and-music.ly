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

Scripture = "“I saw the Holy City coming down out of heaven.” (Revelation 21:2, NKJV)"

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

SopranoVerseBody = \relative c'' {
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
}

SopranoVerseRepeat = \relative c'' {
}

SopranoVerseEnd = \relative c'' {
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
}

AltoVerseRepeat = \relative c' {
}

AltoVerseEnd = \relative c' {
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
}

TenorVerseRepeat = \relative c' {
}

TenorVerseEnd = \relative c' {
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
  \tag #'verseFive { g2.( | g2) }
  b2 |
}

BassVerseRepeat = \relative c {
}

BassVerseEnd = \relative c {
}

SheetMusicVerseBodyBreaks = \relative c {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
}

SlidesVerseBodyBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \break
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  I'm gon -- na view that Ho -- ly Ci -- ty.
  Oh,
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  I'm gon -- na meet my lov -- ing Je -- sus.
  Oh,
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  I'm gon -- na sit at the ban -- quet ta -- ble.
  Oh,
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  I'm gon -- na feast on milk and hon -- ey.
  Oh,
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  I'm gon -- na sing and nev -- er get tired.
  Oh,
}
