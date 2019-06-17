\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key g \major
  \time 4/4
  \tempo 4 = 74
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Lord, Let Us Be Like-Minded"
SongNumber = \lord_let_us_be_like_minded_phss_number
RightFirstPage = \lord_let_us_be_like_minded_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G - 4 - DO" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "WAXAHACHIE"
  meter = "7.6.7.6"
  composer = "C. A. Roberts (2009)"
  poet = "Jennifer L. Payne (2009)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright 2009 Jennifer L. Payne"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4. c8 c4 c4 |
  c2.

  c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4. c8 c4 c4 |
  c2. \bar "|."
}

SopranoVerseMusic = \relative c'' {
  g4 |
  b4 b4 b4 a4 |
  g2 fis4 fis4 |
  e4. e8 e4 d4 |
  d2.

  a'4 |
  c4 c4 c4 b4 |
  a2 g4 d4 |
  e4. e8 e4 g4 |
  g2. \bar "|."
}

AltoVerseMusic = \relative c' {
  d4 |
  g4 g4 fis4 fis4 |
  e2 d4 d4 |
  c4. c8 c4 c4 |
  b4( a2)

  d4 |
  e4 e4 e4 e4 |
  e2 d4 d4 |
  c4. c8 c4 d4 |
  d2. \bar "|."
}

TenorVerseMusic = \relative c' {
  b4 |
  d4 d4 d4 c4 |
  b2 b4 b4 |
  g4. g8 g4 g4 |
  g4( fis2)

  fis4 |
  a4 a4 a4 gis4 |
  a2 b4 g4 |
  g4. g8 a4 a4 |
  b2. \bar "|."
}

BassVerseMusic = \relative c' {
  g4 |
  g4 g4 d4 d4 |
  e2 b4 b4 |
  c4 e4 g4 g4 |
  d2.

  c8[ b8] |
  a4 a4 a4 b4 |
  c2 d4 b4 |
  c4. c8 a4 a4 |
  g2. \bar "|."
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
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Lord, let us be like -- mind -- ed And u -- ni -- fied in prayer,
  With each new day re -- mind -- ed Of all the love we share.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Lord, pu -- ri -- fy our pur -- pose, Re -- move our vain con -- ceit,
  And take am -- bi -- tion from us That we may be com -- plete.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Lord, let us serve to -- geth -- er As chil -- dren with -- out blame
  That we may live for -- ev -- er U -- nit -- ed by Your name.
}
