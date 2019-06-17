\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 102
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "All Nations, Clap Your Hands"
SongNumber = \all_nations_clap_your_hands_phss_number
RightFirstPage = \all_nations_clap_your_hands_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 4 - DO" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "SILVER STREET"
  meter = "SM"
  composer = "Isaac Smith (1770), alt."
  poet = "arr. McNaugher's Psalter (1912); Psalm 47"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Public Domain"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 c8 c8 c4 c4 |
  c2. c4 |
  c4 c4 c4 c4 |
  c2.

  c4 |
  c4 c4 c4. c8 |
  c4 c4 c4. c8 |
  c4 c4 c4 c4 |
  c1 \bar "|."
}

SopranoVerseMusic = \relative c'' {
  c4 g8 g8 e4 g4 |
  c2. e4 |
  d4 g,4 c8[ a8] g8[ fis8] |
  g2.

  g4 |
  c4 e4 c4. g8 |
  a8[ g8] a8[ c8] b4. g8 |
  a8[ b8] c8[ d8] e4 d4 |
  c1 \bar "|."
}

AltoVerseMusic = \relative c' {
  c4 g'8 g8 e4 g4 |
  e2. g4 |
  g4 e4 e4 d4 |
  d2.

  e4 |
  e4 g4 e4. g8 |
  f8[ g8] f8[ e8] d4. e8 |
  f8[ g8] g8[ a8] g4 g8[ f8] |
  e1 \bar "|."
}

TenorVerseMusic = \relative c' {
  c4 g8 g8 e4 g4 |
  g2. c4 |
  b4 b4 a4 b8[ a8] |
  b2.

  c4 |
  g4 c4 g4. c8 |
  c4 c4 g4. c8 |
  c8[ d8] c4 c4 b4 |
  c1 \bar "|."
}

BassVerseMusic = \relative c {
  c4 g'8 g8 e4 g4 |
  c,2. c4 |
  d4 e4 c4 d4 |
  g,2.

  c4 |
  c4 c4 c4. e8 |
  f8[ e8] d8[ c8] g'4. g8 |
  f4 e8[ f8] g4 g,4 |
  c1 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  All na -- tions, clap your hands;
  Let shouts of tri -- umph ring;
  For might -- y o -- ver all the lands
  The LORD Most High is King.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  A -- bove our might -- y foes
  He gave us pow'r to stand,
  And as our her -- it -- age He chose
  The good -- ly prom -- ised land.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  With shouts as -- cends our King.
  With trum -- pet's stir -- ring call;
  Praise God, praise God, His prais -- es sing.
  For God is Lord of all.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  O sing in joy -- ful strains,
  And make His glo -- ry known;
  God o -- ver all the na -- tions reigns,
  And ho -- ly is His throne.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  Our fa -- thers' God to own
  The kings of earth draw nigh.
  For non can save but God a -- lone.
  He is the LORD Most High.
}
