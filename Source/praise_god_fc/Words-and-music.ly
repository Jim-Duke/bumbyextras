\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key d \major
  \time 4/4
  \tempo 4 = 95
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Praise God"
SongNumber = \praise_god_fc_number
RightFirstPage = \praise_god_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "D - 4 - MI" }
}

Scripture = "Enter...His courts with praise. - Psalm 100:4"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "PRAISE GOD"
  meter = "Irregular"
  composer = "Traditional"
  arranger = "David Sexton"
  poet = "Traditional"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright 1993 Howard Publishing Company, Co., Inc.  All rights reserved."
  license = ##f
  tagline = ##f
}

SopranoRefrainMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  r4 |
  r4 fis4 d4 fis8 a8~ |
  a4 g8 a8 fis8 d8 r4 |
  r4 a'8 a8~ a8 b4 a8 |
  c8 b4 a8~ a8 r8 r4 |
  r4 d8 d8 r4 d,8 a'8~ |
  a8 a8 g8 a8 fis8 d4. \bar "||"
}

SopranoVerseMusic = \relative c' {
  r8 fis4 e8 d4 b4 |
  \tag #'sheetMusic { a8( b8) }
  \tag #'verseOne { a8( b8) }
  \tag #'verseTwo { a8 b8 }
  \tag #'verseThree { a8 b8 }
  \tag #'verseFour { a8 b8 }
  cis8 d8~ d4 \bar "|."
}

AltoRefrainMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  r4 |
  r4 d4 d4 d8 fis8~ |
  fis4 e8 fis8 d8 d8 r4 |
  r4 cis8 cis8~ cis8 d4 cis8 |
  e8 d4 cis8~ cis8 r8 r4 |
  r4 fis8 fis8 r4 d8 fis8~ |
  fis8 fis8 e8 fis8 d8 d4. \bar "||"
}

AltoVerseMusic = \relative c' {
  r8 c4 c8 b4 b4 |
  \tag #'sheetMusic { a8( b8) }
  \tag #'verseOne { a8( b8) }
  \tag #'verseTwo { a8 b8 }
  \tag #'verseThree { a8 b8 }
  \tag #'verseFour { a8 b8 }
  a8 a8~ a4 \bar "|."
}

TenorRefrainMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  fis4 |
  d2. a'8 a8~ |
  a4 a8 a8 a8 fis8 d8 e8~ |
  e2~ e8 e4 fis8 |
  g8 gis4 a8~ a8 a8 b8 d8 |
  r2 r4 fis,8 a8~ |
  a8 a8 a8 a8 a8 fis4. \bar "||"
}

TenorVerseMusic = \relative c' {
  r8 a4 a8 a4 g4 |
  \tag #'sheetMusic { g8( g8) }
  \tag #'verseOne { g4 }
  \tag #'verseTwo { g8 g8 }
  \tag #'verseThree { g8 g8 }
  \tag #'verseFour { g8 g8 }
  g8 fis8~ fis4 \bar "|."
}

BassRefrainMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  d4 |
  d2. d8 d8~ |
  d4 d8 d8 d8 d8 d8 a8~ |
  a2~ a8 a4 a8 |
  a8 a4 a8~ a8 a8 b8 d8 |
  r2 r4 d8 d8~ |
  d8 d8 d8 d8 d8 d4. \bar "||"
}

BassVerseMusic = \relative c {
  r8 d4 fis,8 g4 g4 |
  \tag #'sheetMusic { a8( a8) }
  \tag #'verseOne { a4 }
  \tag #'verseTwo { a8 a8 }
  \tag #'verseThree { a8 a8 }
  \tag #'verseFour { a8 a8 }
  a8 d8~ d4 \bar "|."
}

TopPartAlign = {
  \tag #'usePartials { \partial 4 }
  r4 |
  r4 c4 c4 r4 |
  r1 |
  r4 c8 c8~ c8 r4 r8 |
  r1 |
  r4 c8 c8 r2 |
  r1
}

MiddlePartAlign = {
  \tag #'usePartials { \partial 4 }
  r4 |
  r4 c4 c4 c8 c8~ |
  c4 c8 c8 c8 c8 r4 |
  r2 r8 c4 c8 |
  c8 c4 c8~ c8 r8 r4 |
  r2 r4 c8 c8~ |
  c8 c8 c8 c8 c8 c4. |
}

BottomPartAlign = {
  \tag #'usePartials { \partial 4 }
  c4 |
  c2. r4 |
  r2 r4 c8 c8~ |
  c2~ c8 r4 r8 |
  r8 r4 r8 r8 c8 c8 c8 |
  r1 |
  r1 |
}

SheetMusicVerseBreaks = \relative c {
  s1 | \noBreak
  s2. \bar ""
}

SheetMusicRefrainBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "||" \break \noPageBreak
}

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "|." \pageBreak
}

SlidesRefrainBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "||" \pageBreak
}

TopPart = \lyricmode {
  Praise God!
  In all
  A -- men!
}

MiddlePart = \lyricmode {
  " " " " Give thanks to the Fa -- ther
  that you say and do.
  Sing glo -- ry, hal -- le -- lu -- jah!
}

BottomPart = \lyricmode {
  Praise God!
  In all
  Well, a -- men!
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Christ the Lord has died for you.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Christ the Lord has ris -- en for you.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Christ the Lord is liv -- ing for you.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Christ the Lord is com -- ing for you.
}
