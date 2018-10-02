\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 95
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "All Glory, Laud and Honor"
SongNumber = \all_glory_laud_and_honor_number
RightFirstPage = \all_glory_laud_and_honor_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 4 - DO" }
}

Scripture = ""

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "ST. THEODULPH"
  meter = "7.6.7.6 D"
  composer = "Melchior Teschner (1615)"
  arranger = "William H. Monk (1861)"
  poet = "Theodulph of Orleans (c. 820)"
  translator = "John Mason Neale (1861)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "In the Public Domain"
  license = ##f
  tagline = ##f
}

SopranoRefrainMusic_A = \relative c' {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  g'4 g4 a4 b4 |
  c2 c4
  % 6
  e4 |
  d4 c4 c4 b4 |
  c2.
  % 7
  c,4 |
  g'4 g4 a4 b4 |
  c2 c4
  % 6
  e4 |
  d4 c4 c4 b4 |
  c2. \bar "||"
}

SopranoVerseMusic_A = \relative c'' {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  e4 e4 d4 c4 |
  d2 b4
  % 6
  b4 |
  c4 b4 a4 a4 |
  g2.
  % 7
  g4 |
  e4 g4 a4 g4 |
  g4( f4) e4
  % 6
  g4 |
  f4 e4 d4 d4 |
  c2. \bar "|."
}

AltoRefrainMusic_A = \relative c' {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  d4 c4 c4 f4 |
  f4( e8 d8) e4
  % 6
  g4 |
  g8( f8) e4 d4 d4 |
  e2.
  % 7
  c4 |
  d4 c4 c4 f4 |
  f4( e8 d8) e4
  % 6
  g4 |
  g8( f8) e4 d4 d4 |
  e2. \bar "||"
}

AltoVerseMusic_A = \relative c' {
  \tag #'usePartials { \partial 4 }
  % 7
  f4 |
  g4 g4 g4 e4 |
  fis4( a4) g4
  % 6
  g4 |
  e4 e4 e4 fis4 |
  d2.
  % 7
  d4 |
  c4 c4 f4 e4 |
  d4( b4) c4
  % 6
  c4 |
  c4 c4 c4 b4 |
  c2. \bar "|."
}

TenorRefrainMusic_A = \relative c {
  \tag #'usePartials { \partial 4 }
  % 7
  e4 |
  g4 e4 f4 g4 |
  g2 g4
  % 6
  c4 |
  b4 c4 a4 g4 |
  g2.
  % 7
  e4 |
  g4 e4 f4 g4 |
  g2 g4
  % 6
  c4 |
  b4 c4 a4 g4 |
  g2.
}

TenorVerseMusic_A = \relative c' {
  \tag #'usePartials { \partial 4 }
  % 7
  a4 |
  c4 c4 b4 a4 |
  a4( d4) d4
  % 6
  g,4 |
  a4 g4 a4 d8( c8) |
  b2.
  % 7
  g4 |
  g4 c4 c4 c4 |
  g2 g4
  % 6
  g4 |
  a4 g4 g4. f8 |
  e2. \bar "|."
}

BassRefrainMusic_A = \relative c {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  b4 c4 f4 d4 |
  c2 c4
  % 6
  c4 |
  g'4 a4 f4 g4 |
  c,2.
  % 7
  c4 |
  b4 c4 f4 d4 |
  c2 c4
  % 6
  c4 |
  g'4 a4 f4 g4 |
  c,2. \bar "||"
}

BassVerseMusic_A = \relative c {
  \tag #'usePartials { \partial 4 }
  % 7
  f4 |
  c4 d4 g4 a4 |
  d,4( fis4) g4
  % 6
  e4 |
  a,4 b4 c4 d4 |
  g,2.
  % 7
  b4 |
  c4 e4 f4 c4 |
  b4( g4) c4
  % 6
  e4 |
  f4 c4 g4 g4 |
  c2. \bar "|."
}

SopranoRefrainMusic_B = \relative c' {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  g'4 g4 a4 b4 |
  c2 c4
  % 6
  e4 |
  d4 c4 c4 b4 |
  c2.
  % 7
  c,4 |
  g'4 g4 a4 b4 |
  c2 c4
  % 6
  e4 |
  d4 c4 c4 b4 |
  c2. \bar "||"
}

SopranoVerseMusic_B = \relative c'' {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  e4 e4 d4 c4 |
  b4( a4) g4
  % 6
  b4 |
  c4 b4 a4 a4 |
  g2.
  % 7
  g4 |
  e4 g4 a4 g4 |
  g4( f4) e4
  % 6
  g4 |
  f4 e4 d4 d4 |
  c2. \bar "|."
}

AltoRefrainMusic_B = \relative c' {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  d4 e4 f4 f4 |
  f4( e8 d8) e4
  % 6
  g4 |
  g8( f8) e4 d4 d4 |
  e2.
  % 7
  c4 |
  d4 e4 f4 f4 |
  f4( e8 d8) e4
  % 6
  g4 |
  g8( f8) e4 d4 d4 |
  e2. \bar "||"
}

AltoVerseMusic_B = \relative c' {
  \tag #'usePartials { \partial 4 }
  % 7
  e4 |
  g4 a4 a4 a4 |
  g4( fis4) g4
  % 6
  e4 |
  e4 e4 e4 d8( c8) |
  b2.
  % 7
  b4 |
  c4 c4 c4 c4 |
  b2 c4
  % 6
  c4 |
  c4 c4 c4 b4 |
  c2. \bar "|."
}

TenorRefrainMusic_B = \relative c {
  \tag #'usePartials { \partial 4 }
  % 7
  e4 |
  g4 c4 c4 g4 |
  g2 g4
  % 6
  c4 |
  b4 c4 a4 g4 |
  g2.
  % 7
  e4 |
  g4 c4 c4 g4 |
  g2 g4
  % 6
  c4 |
  b4 c4 a4 g4 |
  g2.
}

TenorVerseMusic_B = \relative c' {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  c4 c4 d4 d4 |
  d4( c4) b4
  % 6
  b4 |
  a4 g4 g4 fis4 |
  g2.
  % 7
  g4 |
  g4 g4 f4 e4 |
  g2 g4
  % 6
  g4 |
  a4 g4 g4. f8 |
  e2. \bar "|."
}

BassRefrainMusic_B = \relative c {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  b4 c4 f4 d4 |
  c2 c4
  % 6
  c4 |
  g'4 a4 f4 g4 |
  c,2.
  % 7
  c4 |
  b4 c4 f4 d4 |
  c2 c4
  % 6
  c4 |
  g'4 a4 f4 g4 |
  c,2. \bar "||"
}

BassVerseMusic_B = \relative c' {
  \tag #'usePartials { \partial 4 }
  % 7
  c4 |
  c8( b8) a8( g8) fis4 fis4 |
  g4( d4) g4
  % 6
  g,4 |
  a4 b4 c4 d4 |
  g,2.
  % 7
  g4 |
  c4 e4 f4 c4 |
  g2 c4
  % 6
  e4 |
  f4 c4 g4 g4 |
  c2. \bar "|."
}

SopranoVerseMusic = \SopranoVerseMusic_A
SopranoRefrainMusic = \SopranoRefrainMusic_A
AltoVerseMusic = \AltoVerseMusic_A
AltoRefrainMusic = \AltoRefrainMusic_A
TenorVerseMusic = \TenorVerseMusic_A
TenorRefrainMusic = \TenorRefrainMusic_A
BassVerseMusic = \BassVerseMusic_A
BassRefrainMusic = \BassRefrainMusic_A

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "|." \break \noPageBreak
}

SheetMusicRefrainBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "||" \break \noPageBreak
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

Refrain = \lyricmode {
  All glor -- y, laud, and hon -- our
  To Thee, Re -- deem -- er, King!
  To Whom the lips of child -- ren
  Made sweet Ho -- san -- nas ring,
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Thou art the King of Is -- rael,
  Thou Da -- vid's Roy -- al Son,
  Who in the Lord's Name com -- est,
  The King and Bless -- ed One.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  The comp -- an -- y of An -- gels
  Are prais -- ing Thee on high,
  And mort -- al men, and all things
  Cre -- at -- ed make re -- ply
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  The peo -- ple of the He -- brews
  With palms be -- fore Thee went
  Our praise and prayer and an -- thems
  Be -- fore Thee we pre -- sent
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  To Thee be -- fore Thy Pas -- sion
  They sang their hymns o praise;
  To Thee no high ex -- alt -- ed
  Our mel -- o -- dy we raise
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  Thou didst ac -- cept their prais -- es;
  Ac -- cept the prayer we bring,
  Who in all good de -- light -- est,
  Thou good and gra -- cious King.
}
