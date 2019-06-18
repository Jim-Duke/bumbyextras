\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key g \major
  \time 4/4
  \tempo 4 = 90
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Lift Up the Light"
SongNumber = \lift_up_the_light_phss_number
RightFirstPage = \lift_up_the_light_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G - 4 - MI" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = ""
  meter = "Irr"
  composer = "C. E. Couchman (2000)"
  poet = "C. E. Couchman (2000); based on Psalms 4:6; 18:28; 119:129-130"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright 2000 C. E. Couchman"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c2 c4 c4 |
  c4 c8 c8 c8 c8 c8 c8 |
  c4 c4 c4. c8 |
  c4 c4 c4.

  c8 |
  c4 c8 c8 c4. c8 |
  c4 c4 c4 c8 c8 |
  c4 c4 c4 c4 |
  c1 \bar "|."
}

SopranoVerseMusic = \relative c'' {
  b2 b4 d4 |
  c4 a8 c8 b8 a8 g8 d8 |
  e8[ fis8] g8[ a8] g4. a8 |
  b4 c4 a4.

  d8 |
  e4 e8 e8 d4. b8 |
  a4 d4 b8[ a8] g8 d8 |
  e4 g4 g4 fis4 |
  g1 \bar "|."
}

AltoVerseMusic = \relative c'' {
  g2 g4 g4 |
  g4 fis8 fis8 g8 g8 d8 d8 |
  e8[ fis8] g8[ a8] d,4. fis8 |
  g4 g8[ a8] fis4.

  g8 |
  g4 g8 g8 g4. g8 |
  fis4 a4 g4 d8 d8 |
  c4 e4 d4 d4 |
  d1 \bar "|."
}

TenorVerseMusic = \relative c' {
  d2 d4 b4 |
  e4 d8 d8 d8 c8 b8 b8 |
  c4 c4 b4. d8 |
  d4 c4 d4.

  b8 |
  c4 c8 c8 b4. d8 |
  d4 d4 d8[ c8] b8 b8 |
  c4 c4 g4 a8[ c8] |
  b1 \bar "|."
}

BassVerseMusic = \relative c' {
  g4( fis4) e4 d4 |
  g4 d8 d8 g8 g8 g8 g8 |
  c,8[ d8] e8[ fis8] g4. d8 |
  g8[ fis8] e4 d4.

  g8 |
  c,4 c8 c8 g'4. g8 |
  d4 fis4 g4 g8 g8 |
  c,4 c4 b4 d4 |
  <g g,>1 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
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

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Lift up the light of Your coun -- te -- nance
  Up -- on us, LORD, up -- on us, LORD;
  For You are the lamp that lights the dark -- ness,
  The bright -- ness of our day.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Un -- fold the words of Your right -- eous -- ness
  Be -- fore us, LORD, be -- fore us, LORD;
  For they are the light of un -- der -- stand -- ing,
  The bright -- ness of our way.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Light of the word, shine the morn -- ing star
  in -- to our hearts, in -- to our hearts.
  A lamp to our feet, still bright -- er, bright -- er
  Un -- til the per -- fect day.
}
