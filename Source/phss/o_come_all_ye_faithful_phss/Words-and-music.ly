\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 96
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "O Come, All Ye Faithful"
SongNumber = \o_come_all_ye_faithful_phss_number
RightFirstPage = \o_come_all_ye_faithful_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G - 4 - DO" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "ADESTE FIDELES"
  meter = "Irr."
  composer = "John F. Wade (c. 1744)"
  poet = "John F. Wade (c. 1744)"
  translator = "st. 1 tr. Fredrick Oakeley (1841, 1852), st. 2-3 tr. William Mercer (1854)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = ""
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 |
  c2 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c2 c4

  c4 |
  c2
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c2 }
  \tag #'verseThree { c4 c4 } |
  c2 c4 c4 |
  c2~ c4. c8 |
  c1

  c2 c4 c4 |
  c2
  \tag #'verseOne { b2 }
  \tag #'verseTwo { b4 b4 }
  \tag #'verseThree { b2 } |
  c4 c4 c4 c4 |
  c2 c4 \bar "||"
}

AlignRefrainMusic = {
  c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 c4

  c4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c2~ c4. c8 |
  c2. \bar "|."
}

SopranoVerseMusic = \relative c'' {
  \tag #'sheetMusic { g4 }
  \tag #'verseOne { g4 }
  \tag #'verseTwo { r4 }
  \tag #'verseThree { r4 } |
  g2 d4 g4 |
  a2 d,2 |
  b'4 a4 b4 c4 |
  b2 a4

  \tag #'sheetMusic { g4 }
  \tag #'verseOne { g4 }
  \tag #'verseTwo { r4 }
  \tag #'verseThree { r4 } |
  g2 fis4( e4) |
  fis4( g4) a4 b4 |
  fis2( e4.) d8 |
  d1

  d'2 c4 b4 |
  c2
  \tag #'sheetMusic { b4~ b4 }
  \tag #'verseOne { b2 }
  \tag #'verseTwo { b4 b4 }
  \tag #'verseThree { b2 } |
  a4 b4 g4 a4 |
  fis4.( e8) d4 \bar "||"
}

SopranoRefrainMusic = \relative c'' {
  g4 |
  g4 fis4 g4 a4 |
  g2 d4 b'4 |
  b4 a4 b4 c4 |
  b2 a4

  b4 |
  c4 b4 a4 g4 |
  fis2 g4( c4) |
  b2( a4.) g8 |
  g2. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'sheetMusic { d4 }
  \tag #'verseOne { d4 }
  \tag #'verseTwo { r4 }
  \tag #'verseThree { r4 } |
  d2 d4 b4 |
  d2 d2 |
  d4 d4 d4 e4 |
  d2 d4

  \tag #'sheetMusic { b4 }
  \tag #'verseOne { b4 }
  \tag #'verseTwo { r4 }
  \tag #'verseThree { r4 } |
  b4( cis4) d4( cis4) |
  d2 d4 d4 |
  d2( cis4.) d8 |
  d1 |

  d2 e8[ fis8] g4 |
  e4( fis4)
  \tag #'sheetMusic { g4~ g4 }
  \tag #'verseOne { g2 }
  \tag #'verseTwo { g4 g4 }
  \tag #'verseThree { g2 } |
  d4 d4 e4 e4 |
  d2 d4 \bar "||"
}

AltoRefrainMusic = \relative c'' {
  g4 |
  g4 fis4 g4 a4 |
  g2 d4 d4 |
  d4 d4 d4 fis4 |
  g2 fis4

  g4 |
  e8[ fis8] g4 d4 cis4 |
  d2 d4( e4) |
  d2( c4.) b8 |
  b2. \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'sheetMusic { b4 }
  \tag #'verseOne { b4 }
  \tag #'verseTwo { r4 }
  \tag #'verseThree { r4 } |
  b2 g4 g4 |
  fis2 a2 |
  g4 a4 g4 g4 |
  g2 fis4

  \tag #'sheetMusic { g4 }
  \tag #'verseOne { g4 }
  \tag #'verseTwo { r4 }
  \tag #'verseThree { r4 } |
  g2
  \tag #'sheetMusic { a4~ a4 }
  \tag #'verseOne { a4 a4 }
  \tag #'verseTwo { a2 }
  \tag #'verseThree { a4 a4 } |
  a4( g4) fis4 e4 |
  a2( g4.) fis8 |
  fis1 |

  b2 c4 d4 |
  c2
  \tag #'sheetMusic { d4~ d4 }
  \tag #'verseOne { d2 }
  \tag #'verseTwo { d4 d4 }
  \tag #'verseThree { d2 } |
  d4 g,4 b4 c4 |
  a4.( g8) fis4 \bar "||"
}

TenorRefrainMusic = \relative c' {
  r4 |
  r1 |
  r2 r4 g4 |
  g4 fis4 g4 a4 |
  g2 d4

  d'4 |
  c4 d4 a4 a4 |
  a2 g2 |
  g2( fis4.) g8 |
  g2. \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'sheetMusic { g4 }
  \tag #'verseOne { g4 }
  \tag #'verseTwo { r4 }
  \tag #'verseThree { r4 } |
  g2 b4 g4 |
  d'2 fis2 |
  g4 fis4 g4 c,4 |
  d2 d4

  \tag #'sheetMusic { e4 }
  \tag #'verseOne { e4 }
  \tag #'verseTwo { r4 }
  \tag #'verseThree { r4 } |
  e2 d4( a4) |
  d4( b4) fis4 g4 |
  a2~ a4. d8 |
  d1

  b'2 a4 g4 |
  a2
  \tag #'sheetMusic { g4~ g4 }
  \tag #'verseOne { g2 }
  \tag #'verseTwo { g4 g4 }
  \tag #'verseThree { g2 } |
  fis4 g4 e4 c4 |
  d2 d4 \bar "||"
}

BassRefrainMusic = \relative c' {
  r4 |
  r1 |
  r1 |
  r1 |
  r2 r4 g4 |
  a4 g4 fis4 e4 |
  d4( c4) b4( c4) |
  d2~ d4. g,8 |
  g2. \bar "|."
}

SheetMusicVerseBreaks = {
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak

  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
}

SheetMusicRefrainBreaks = {
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

lyricRest = \markup { \raise #1.0 \musicglyph #"rests.2" }

VerseOne = \lyricmode {
  \set stanza = "1. "
  O come, all ye faith -- ful,
  Joy -- ful and tri -- um -- phant,
  O come ye, O come ye to Beth -- le -- hem.
  Come and be -- hold Him,
  Born the King of an -- gels;
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  \lyricRest True God of true God,
  Light from Light E -- ter -- nal,
  \lyricRest Lo, He shuns not the vir -- gin's womb;
  Son of the Fa -- ther, Be -- got -- ten, not cre -- at -- ed;
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  \lyricRest Child, for us sin -- ners
  Poor and in the man -- ger,
  \lyricRest We would em -- brace Thee, with lov and awe;
  Who would not love Three, Lov -- ing us so dear -- ly?
}

Refrain = \lyricmode {
  O come, let us a -- dore Him,
  O come, let us a -- dore Him,
  O come, let us a -- dore Him,
  Christ the Lord.
}
