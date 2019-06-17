\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key c \major
  \time 3/4
  \tempo 4 = 72
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "My Lord, My Truth, My Way"
SongNumber = \my_lord_my_truth_my_way_phss_number
RightFirstPage = \my_lord_my_truth_my_way_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 3 - SOL" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "FERGUSON"
  meter = "SM"
  composer = "George Kingsley (1843)"
  poet = "Charles Wesley (1749)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Public Domain"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2

  c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 \bar "|."
}

SopranoVerseMusic = \relative c'' {
  g4 |
  g4( e4) c'4 |
  c4( b4) a4 |
  g2 e4 |
  f2 g4 |
  e2 f4 |
  d2

  g4 |
  g2 e'4 |
  e4( d4) c4 |
  c4( b4) a4 |
  g2 g4 |
  c4( d4) e4 |
  f2 b,4 |
  c2 \bar "|."
}

AltoVerseMusic = \relative c' {
  e4 |
  e4( c4) e4 |
  f4( g4) f4 |
  e2 c4 |
  c2 d4 |
  c2 d4 |
  b2

  d4 |
  e2 g4 |
  g4( f4) g4 |
  a4( g4) f4 |
  e2 d4 |
  g2 g4 |
  g2 f4 |
  e2 \bar "|."
}

TenorVerseMusic = \relative c' {
  c4 |
  c4( g4) g4 |
  a4( b4) c4 |
  c2 g4 |
  a2 g4 |
  g2 a4 |
  g2

  b4 |
  c2 c4 |
  c4( b4) c4 |
  c2 c4 |
  c2 b4 |
  c4( b4) c4 |
  b4( d4) g,4 |
  g2 \bar "|."
}

BassVerseMusic = \relative c {
  c4 |
  c2 c4 |
  f2 f4 |
  c2 c4 |
  c2 b4 |
  c2 f,4 |
  g2

  g'4 |
  c,2 c4 |
  c4( d4) e4 |
  f2 f4 |
  c2 f4 |
  e4( d4) c4 |
  g'2 g,4 |
  c2 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break \noPageBreak

  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  My Lord, my truth, my way, My sure, un -- err -- ing light,
  On Thee my fee -- ble steps I stay, Which Thou wilt guide a -- right.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  My wis -- dom and my guide, My coun -- se -- lor Thou art;
  O nev -- er let me leave Thy side Or from Thy paths de -- part!
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Teach me the hap -- py art In all things to de -- pend
  On Thee; O nev -- er, Lord, de -- part, But love me to the end!
}
