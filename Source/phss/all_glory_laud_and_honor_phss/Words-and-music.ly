\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 96
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "All Glory, Laud and Honor"
SongNumber = \all_glory_laud_and_honor_phss_number
RightFirstPage = \all_glory_laud_and_honor_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 4 - DO" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "ST. THEODULPH"
  meter = "7.6.7.6.D"
  composer = "Melchior Teschner (1615)"
  poet = "Theodulph of Orleans (c. 820)"
  arranger = "William H. Monk"
  translator = "John Mason Neale (1851)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = ""
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2.

  c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2.

  c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2.

  c4 |
  c4 c4 c4 c4 |
  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2. \bar "|."
}

SopranoVerseMusic = \relative c' {
  c4 |
  g'4 g4 a4 b4 |
  c2 c4 e4 |
  d4 c4 c4 b4 |
  c2.

  c,4 |
  g'4 g4 a4 b4 |
  c2 c4 e4 |
  d4 c4 c4 b4 |
  c2.

  c4 |
  e4 e4 d4 c4 |
  b4( a4) g4 b4 |
  c4 b4 a4 a4 |
  g2.

  g4 |
  e4 g4 a4 g4 |
  g4( f4) e4 g4 |
  f4 e4 d4 d4 |
  c2. \bar "|."
}

AltoVerseMusic = \relative c' {
  c4 |
  d4 e4 f4 f4 |
  f4( e8[ d8]) e4 g4 |
  g8[ f8] e4 d4 d4 |
  e2.

  c4 |
  d4 e4 f4 f4 |
  f4( e8[ d8]) e4 g4 |
  g8[ f8] e4 d4 d4 |
  e2.

  e4 |
  g4 a4 a4 a4 |
  g4( fis4) g4 e4 |
  e4 e4 e4 d8[ c8] |
  b2.

  b4 |
  c4 c4 c4 c4 |
  b2 c4 c4 |
  c4 c4 c4 b4 |
  c2. \bar "|."
}

TenorVerseMusic = \relative c {
  e4 |
  g4 c4 c4 g4 |
  g2 g4 c4 |
  b4 c4 a4 g4 |
  g2.

  e4 |
  g4 c4 c4 g4 |
  g2 g4 c4 |
  b4 c4 a4 g4 |
  g2.

  c4 |
  c4 c4 d4 d4 |
  d4( c4) b4 b4 |
  a4 g4 g4 fis4 |
  g2.

  g4 |
  g4 g4 f4 e4 |
  g2 g4 g4 |
  a4 g4 g4. f8 |
  e2. \bar "|."
}

BassVerseMusic = \relative c {
  c4 |
  b4 c4 f4 d4 |
  c2 c4 c4 |
  g'4 a4 f4 g4 |
  c,2.

  c4 |
  b4 c4 f4 d4 |
  c2 c4 c4 |
  g'4 a4 f4 g4 |
  c,2.

  c'4 |
  c8[ b8] a8[ g8] fis4 fis4 |
  g4( d4) g4 g,4 |
  a4 b4 c4 d4 |
  g,2.

  g4 |
  c4 e4 f4 c4 |
  g2 c4 e4 |
  f4 c4 g4 g4 |
  c2. \bar "|."
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
  All glo -- ry, laud and hon -- or, To Thee, Re -- deem -- er, King,
  To whom the lips of chil -- dren Made sweet ho -- san -- as ring.
  Thou art the King of Is -- rael, Thou Da -- vid's roy -- al son,
  Who in the LORD's name com -- est, The King and Bless -- ed One.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  The com -- pa -- ny of an -- gels Are prais -- ing Thee on high,
  And mor -- tal men and all things Cre -- at -- ed make re -- ply.
  The peo -- ple of the He -- brews With palms be -- fore Thee went;
  Our praise and prayer and an -- thems Be -- fore Thee we pre -- sent.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  To Thee, be -- fore Thy pas -- sion, They sang their hymns of praise;
  To Thee, now high ex -- alt -- ed, Our mel -- o -- dy we raise.
  Thou didst ac -- cept their prais -- es; Ac -- cept the praise we bring,
  Who in all good de -- light -- est, Thou good and gra -- cious King.
}
