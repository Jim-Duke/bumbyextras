\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key g \major
  \numericTimeSignature
  \time 2/2
  \tempo 2 = 52
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Wisdom and Power"
SongNumber = \wisdom_and_power_phss_number
RightFirstPage = \wisdom_and_power_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G- 2 - SOL" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "BAINBRIDGE"
  meter = "11.12.11.12"
  composer = "John D. Trimble (2004)"
  poet = "John D. Trimble (2004)"
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
  c2. c4 |
  c2 c4 c4 |
  c4 c2

  c4 |
  c2 c4 c4 |
  c4 c2 c4 |
  c4 c4 c4 c4 |
  c2.

  c4 |
  c2 c4 c4 |
  c2. c4 |
  c2 c4 c4 |
  c4 c2

  c4 |
  c2 c4 c4 |
  c4 c2 c4 |
  c4 c4 c4 c4 |
  c2. \bar "|."
}

SopranoVerseMusic = \relative c' {
  d4 |
  b'2 d4 e4 |
  d2. d4 |
  c2 g4 a4 |
  g4 d2

  g4 |
  e2 g4 a4 |
  g4 d2 g4 |
  e4 g4 fis4 g4 |
  a2.

  d,4 |
  b'2 d4 e4 |
  d2. d4 |
  c2 g4 a4 |
  g4 d2

  g4 |
  e2 g4 a4 |
  g4 d2 g4 |
  e4 g4 fis4 a4 |
  g2. \bar "|."
}

AltoVerseMusic = \relative c' {
  d4 |
  g2 g4 g4 |
  fis4( a4 g4) fis4 |
  e2 e4 d4 |
  d4 b2

  d4 |
  c2 e4 d4 |
  b4 b2 d4 |
  c4 e4 d4 e4 |
  fis2.

  d4 |
  g2 g4 g4 |
  fis4( a4 g4) fis4 |
  e2 e4 d4 |
  d4 b2

  d4 |
  c2 e4 d4 |
  b4 b2 d4 |
  c4 e4 d4 fis4 |
  d2. \bar "|."
}

TenorVerseMusic = \relative c' {
  d4 |
  d2 b4 g4 |
  a2. g4 |
  g2 g4 fis4 |
  b4 g2

  g4 |
  g2 g4 fis4 |
  g4 g2 g4 |
  g4 c4 c4 b4 |
  d2.

  d4 |
  d2 b4 g4 |
  a2. g4 |
  g2 g4 fis4 |
  b4 g2

  g4 |
  g2 g4 fis4 |
  g4 g2 g4 |
  g4 c4 a4 d8[ c8] |
  b2. \bar "|."
}

BassVerseMusic = \relative c {
  d4 |
  g,2 g4 b4 |
  d2. b4 |
  c2 c4 d4 |
  g,4 g2

  b4 |
  c2 c4 d4 |
  g,4 g2 b4 |
  c4 c4 c4 e4 |
  d2.

  d4 |
  g,2 g4 b4 |
  d2. b4 |
  c2 c4 d4 |
  g,4 g2

  b4 |
  c2 c4 d4 |
  g,4 g2 b4 |
  c4 c4 d4 d4 |
  g,2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

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

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  The name of the LORD be bless -- ed for -- ev -- er!
  All wis -- dom and pow -- er be -- long to Him a -- lone!
  He chang -- es the times, ap -- point -- ing the sea -- sons.
  The scep -- ters of king -- doms are gov -- erned from His throne.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  No night o -- ver -- comes the light of His wis -- dom.
  The deep and the hid -- den are known un -- to the LORD.
  He gives un -- to those who seek un -- der -- stand -- ing,
  His knowl -- edge im -- plant -- ed through read -- in of His word.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Give thanks un -- to God!  Yes, praise Him for -- ev -- er!
  His wis -- dom and pow -- er through Christ have been made known!
  Through stud -- y and trial and prayer He per -- fects us,
  Un -- til we are glo -- rious, the im -- age of His Son.
}
