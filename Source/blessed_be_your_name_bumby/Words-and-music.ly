\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 120
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Blessed Be Your Name"
SongNumber = \blessed_be_your_name_bumby_number
RightFirstPage = \blessed_be_your_name_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "A - 4 - MI" }
}

Scripture = "\"Naked I came from my mother's womb, And naked I shall return there.
 The Lord gave and the Lord has taken away, Blessed by the name of the Lord.\" 
 -- Job 1:21 NASB95"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "BLESSED BE YOUR NAME"
  meter = "Irregular"
  composer = "Matt and Beth Redman"
  arranger = "Clarissa Cox and The ZOEgroup - Simplified"
  poet = "Matt and Beth Redman"
  altered = ##t
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 2002 Thankyou Music. All rights reserved."
  copyright_admin = "worshiptogether.com Songs, except UK and Europe by Kingsway music"
  license = #(string-append "CCLI Song #3798438, License #" bumby_ccli_license)
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  r2 cis8 e8~ e8 d8~ |
  d8 e8~ e8 e8~ e4. cis16 b16 |
  cis4. cis8~ cis8 e8~ e8 d8~ |
  d8 e8~ e8 e8~ e4. cis16 b16 |
  cis4. cis8~ cis8 e8~ e8 d8~ |
  d8 e8~ e8 e8~ e4. cis8 |
  b8 cis8 b8 a8~ a2~ |
  a1 |
  
  r2 cis8 e8~ e8 d8~ |
  d8 e8~ e8 e8~ e4. cis16 b16 |
  cis4. cis8~ cis8 e8~ e8 d8~ |
  d8 e8~ e8 e8~ e4. cis16 b16 |
  cis4. cis8~ cis8 e8~ e8 d8~ |
  d8 e8~ e8 e8~ e4. cis8 |
  b8 cis8 b8 a8~ a2~ |
  a1 \bar "||"
}

SopranoRefrainMusic = \relative c'' {
  r4 a8 a8 a4 e4 |
  e4 fis4 gis4 a8( fis8) |
  r4 b4 b8( a8) a4 |
  fis1 |
  
  r4 a8 a8 a4 e4 |
  e4 fis4 gis4 a8( fis8) |
  r4 b4 b8( a8) a8 a8~ |
  a2
  
  cis8 b8 b8 a8 |
  a4. a8~ a8 a8( b8) b8~ |
  b2
  
  cis8 b8 b8 a8 |
  a1~ |
  a2
  
  cis8 b8 b8 a8 |
  a4. a8~ a8 a8( b8) b8~ |
  b2
  
  cis8 b8 b8 a8 |
  cis4( d8) cis8~ cis8 b8( a8) a8~ |
  a2. r8
  
  a8 |
  cis4 cis4 cis8( b8~ b8) b8 |
  b2. r8
  
  a8 |
  cis4 cis4 cis8( b8~ b8) b8 |
  b8( a8~ a2) r8
  
  a8 |
  cis4 cis4 cis8( b8~ b8) b8 |
  b2.
  
  a4 |
  cis4 cis4 cis4 b8( a8) |
  a1 \bar "|."
}

AltoVerseMusic = \relative c' {
  r2 a8 cis8~ cis8 b8~ |
  b8 b8~ b8 b8~ b4. b16 b16 |
  
  cis4. cis8~ cis8 cis8~ cis8 a8~ |
  a8 a8~ a8 a8~ a4. a16 a16 |
  
  a4. a8~ a8 cis8~ cis8 b8~ |
  b8 b8~ b8 b8~ b4. cis8 |
  
  b8 cis8 b8 a8~ a2~ |
  a1 |
  
  r2 a8 cis8~ cis8 b8~ |
  b8 b8~ b8 b8~ b4. b16 b16 |
  
  cis4. cis8~ cis8 cis8~ cis8 a8~ |
  a8 a8~ a8 a8~ a4. a16 a16 |
  
  a4. a8~ a8 cis8~ cis8 b8~ |
  b8 b8~ b8 b8~ b4. cis8 |
  
  b8 cis8 b8 a8~ a2~ |
  a1 \bar "||"
}

AltoRefrainMusic = \relative c' {
  r4 e8 e8 e4 cis4 |
  b4 b4 e4 fis4 |
  r4 fis4 fis4 fis4 |
  d1 |
  
  r4 e8 e8 e4 cis4 |
  b4 b4 e4 fis4 |
  r4 fis4 fis4 fis8 fis8~ |
  fis2
  
  fis8 fis8 fis8 e8 |
  e4. e8~ e8 a8( a8) gis8~ |
  gis2
  
  a8 gis8 gis8 fis8 |
  fis1~ |
  fis2
  
  fis8 fis8 fis8 e8 |
  e4. e8~ e8 a8( a8) gis8~ |
  gis2
  
  a8 gis8 gis8 fis8 |
  a4. a8~ a8 gis8( fis8) fis8~ |
  fis2. r8
  
  e8 |
  a4 a4 a4. a8 |
  gis2. r8
  
  fis8 |
  a4 a4 a4. gis8 |
  gis8( fis8~ fis2) r8
  
  e8 |
  a4 a4 a4. a8 |
  gis2. fis4 |
  a4 a4 a4 gis8( fis8) |
  fis1 \bar "|."
}

TenorVerseMusic = \relative c {
  r2 e8 a8~ a8 fis8~ |
  fis8 gis8~ gis8 gis8~ gis4. gis16 gis16 |
  a4. a8~ a8 a8~ a8 fis8~ |
  fis8 fis8~ fis8 fis8~ fis4. fis16 fis16 |
  e4. e8~ e8 fis8~ fis8 a8~ |
  a8 a8~ a8 gis8~ gis4. a8 |
  gis8 a8 gis8 fis8~ fis2~ |
  fis1 |
  
  r2 e8 a8~ a8 fis8~ |
  fis8 gis8~ gis8 gis8~ gis4. gis16 gis16 |
  a4. a8~ a8 a8~ a8 fis8~ |
  fis8 fis8~ fis8 fis8~ fis4. fis16 fis16 |
  e4. e8~ e8 fis8~ fis8 a8~ |
  a8 a8~ a8 gis8~ gis4. a8 |
  gis8 a8 gis8 fis8~ fis2~ |
  fis1 \bar "||"
}

TenorRefrainMusic = \relative c' {
  r4 cis8 cis8 b4 a4 |
  gis4 a4 b4 cis4 |
  r4 cis4 cis4 cis4 |
  a1 |
  
  r4 cis8 cis8 b4 a4 |
  gis4 a4 b4 cis4 |
  r4 cis4 cis4 cis8 d8~ |
  d2
  
  d8 d8 d8 d8 |
  cis4. cis8~ cis8 e8~ e8 e8~ |
  e2
  
  e8 e8 e8 b8 |
  cis1( |
  d2)
  
  d8 d8 d8 d8 |
  cis4. cis8~ cis8 e8~ e8 e8~ |
  e2
  
  e8 e8 e8 cis8 |
  fis4. e8~ e8 cis8~ cis8 d8~ |
  d2. r8
  
  d8 |
  e4 e4 e4. e8 |
  e2. r8
  
  e8 fis4 fis4 fis4. cis8 |
  d2. r8
  
  d8 e4 e4 e4. e8 |
  d2.
  
  e4 |
  fis4 fis4 fis4 cis4 |
  d1 \bar "|."
}

BassVerseMusic = \relative c {
  r2 a8 a8~ a8 e'8~ |
  e8 e8~ e8 e8~ e4. e16 e16 |
  fis4. fis8~ fis8 fis8~ fis8 d8~ |
  d8 d8~ d8 d8~ d4. d16 d16 |
  a4. a8~ a8 a8~ a8 e'8~ |
  e8 e8~ e8 e8~ e4. e8 |
  e8 fis8 fis8 fis8~ fis2( |
  d1)
  
  r2 a8 a8~ a8 e'8~ |
  e8 e8~ e8 e8~ e4. e16 e16 |
  fis4. fis8~ fis8 fis8~ fis8 d8~ |
  d8 d8~ d8 d8~ d4. d16 d16 |
  a4. a8~ a8 a8~ a8 e'8~ |
  e8 e8~ e8 e8~ e4. e8 |
  e8 fis8 fis8 fis8~ fis2( |
  d1)
}

BassRefrainMusic = \relative c {
  r4 a8 a8 a4 a4 |
  e'4 e4 e4 e4 |
  r4 fis4 fis4 fis4 |
  d1 |
  
  r4 a8 a8 a4 a4 |
  e'4 e4 e4 e4 |
  r4 fis4 fis4 fis8 d8~ |
  d2
  
  d8 d8 d8 d8 |
  <a' a,>4. <a a,>8~ <a a,>8 <a a,>8~ <a a,>8 e8~ |
  e2
  
  e8 e8 e8 e8 |
  fis1( |
  d2)
  
  d8 d8 d8 d8 |
  <a' a,>4. <a a,>8~ <a a,>8 <a a,>8~ <a a,>8 e8~ |
  e2

  e8 e8 e8 e8 |
  fis4. e8~ e8 e8~ e8 d8~ |
  d2. r8
  
  a'8 |
  a4 a4 a4. a8 |
  e2. r8
  
  e8 fis4 fis4 fis4. fis8 |
  d2. r8 d8 |
  a'4 a4 a4. a8 |
  e2. e4 |
  fis4 fis4 fis4 fis8( d8) |
  d1 \bar "|."
}

SheetMusicVerseBreaks = {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
}

SheetMusicRefrainBreaks = {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %-------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %-------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %-------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %-------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %-------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %-------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s1 | \pageBreak
}

SlidesRefrainBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s1 | \pageBreak
  
  %--------------------------------------------

  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2 \bar "" \pageBreak
  
  %--------------------------------------------

  \setSystemOffset \defaultTopSystemOffset
  s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2 \bar "" \pageBreak
  
  %--------------------------------------------

  \setSystemOffset \defaultTopSystemOffset
  s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2 \bar "" \pageBreak
  
  %--------------------------------------------

  \setSystemOffset \defaultTopSystemOffset
  s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2 \bar "" \pageBreak
  
  %--------------------------------------------

  \setSystemOffset \defaultTopSystemOffset
  s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %--------------------------------------------

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %--------------------------------------------

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Bles -- sed be your name
  In a land that is plen -- ti -- ful
  Where your streams of a -- bun -- dance flow,
  Bles -- sed be your name.
  Bles -- sed be your name
  When I'm found in the des -- ert place
  Though I walk through the wild -- er -- ness,
  Bles -- sed be your name.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Bles -- sed be your name
  when the sun's shin -- ing down on me
  When the world's "\"all" as it should "be,\""
  Bles -- sed be your name.
  
  Bles -- sed be your name
  On a road marked with suf -- fer -- ing
  Though there's pain in the of -- fer -- ing,
  Bles -- sed be your name.
}

Refrain = \lyricmode {
  Ev -- 'ry bles -- sing you pour out I
  turn back to praise.
  When the dark -- ness clos -- es in Lord,
  still I will say,
  
  Bles -- sed be the name of the Lord,
  Bles -- sed be Your name.
  Bles -- sed be the name of the Lord,
  Bles -- sed be your glor -- i -- ous name.
  
  You give and take a -- way,
  You give and take a -- way,
  My heart will choose to say,
  "\"Lord," bles -- sed be Your "name.\""
}
